# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-04 07:23:23.

require 'ads_common/savon_service'
require 'adwords_api/v201109/geo_location_service_registry'

module AdwordsApi; module V201109; module GeoLocationService
  class GeoLocationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201109'
      super(config, endpoint, namespace, :v201109)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    private

    def get_service_registry()
      return GeoLocationServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201109::GeoLocationService
    end
  end
end; end; end
