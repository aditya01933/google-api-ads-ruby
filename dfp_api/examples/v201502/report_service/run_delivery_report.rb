#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example runs a report similar to the "Orders report" on the DFP website
# with additional attributes and can filter to include just one order.
# To download the report see download_report.rb.

require 'dfp_api'

API_VERSION = :v201502
MAX_RETRIES = 10
RETRY_INTERVAL = 30

def run_delivery_report()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ReportService.
  report_service = dfp.service(:ReportService, API_VERSION)

  # Specify the order ID to filter by.
  order_id = 'INSERT_ORDER_ID_HERE'.to_i

  # Create report query.
  report_query = {
    :date_range_type => 'LAST_MONTH',
    :dimensions => ['ORDER_ID', 'ORDER_NAME'],
    :dimension_attributes => ['ORDER_TRAFFICKER', 'ORDER_START_DATE_TIME',
        'ORDER_END_DATE_TIME'],
    :columns => ['AD_SERVER_IMPRESSIONS', 'AD_SERVER_CLICKS', 'AD_SERVER_CTR',
        'AD_SERVER_CPM_AND_CPC_REVENUE', 'AD_SERVER_WITHOUT_CPD_AVERAGE_ECPM'],
    # Create statement object to filter for an order.
    :statement => {
        :query => 'WHERE ORDER_ID = :order_id',
        :values => [
            {:key => 'order_id',
             :value => {:value => order_id, :xsi_type => 'NumberValue'}}
        ]
    }
  }

  # Create report job.
  report_job = {:report_query => report_query}

  # Run report job.
  report_job = report_service.run_report_job(report_job);

  MAX_RETRIES.times do |retry_count|
    # Get the report job status.
    report_job = report_service.get_report_job(report_job[:id])

    break unless report_job[:report_job_status] == 'IN_PROGRESS'
    puts "Report with ID: %d is still running." % report_job[:id]
    sleep(RETRY_INTERVAL)
  end

  puts "Report job with ID: %d finished with status %s." %
      [report_job[:id], report_job[:report_job_status]]
end

if __FILE__ == $0
  begin
    run_delivery_report()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
