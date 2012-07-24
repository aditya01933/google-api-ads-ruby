# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-04 07:23:02.

require 'adwords_api/errors'

module AdwordsApi; module V201109; module CampaignService
  class CampaignServiceRegistry
    CAMPAIGNSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"CampaignPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"CampaignOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"CampaignReturnValue", :min_occurs=>0, :max_occurs=>1}]}}}
    CAMPAIGNSERVICE_TYPES = {:CampaignStats=>{:fields=>[], :base=>"Stats"}, :ConversionOptimizer=>{:fields=>[{:name=>:pricing_model, :type=>"PricingModel", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_optimizer_bid_type, :type=>"ConversionOptimizerBidType", :min_occurs=>0, :max_occurs=>1}, {:name=>:deduplication_mode, :type=>"ConversionDeduplicationMode", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingStrategy"}, :ConversionOptimizerBiddingTransition=>{:fields=>[{:name=>:use_saved_bids, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingTransition"}, :ConversionOptimizerEligibility=>{:fields=>[{:name=>:eligible, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:rejection_reasons, :type=>"ConversionOptimizerEligibility.RejectionReason", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FrequencyCap=>{:fields=>[{:name=>:impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_unit, :type=>"TimeUnit", :min_occurs=>0, :max_occurs=>1}, {:name=>:level, :type=>"Level", :min_occurs=>0, :max_occurs=>1}]}, :GeoTargetTypeSetting=>{:fields=>[{:name=>:positive_geo_target_type, :type=>"GeoTargetTypeSetting.PositiveGeoTargetType", :min_occurs=>0, :max_occurs=>1}, {:name=>:negative_geo_target_type, :type=>"GeoTargetTypeSetting.NegativeGeoTargetType", :min_occurs=>0, :max_occurs=>1}], :base=>"Setting"}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :ManualCPC=>{:fields=>[{:name=>:enhanced_cpc_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingStrategy"}, :ManualCPM=>{:fields=>[], :base=>"BiddingStrategy"}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue"}, :NetworkSetting=>{:fields=>[{:name=>:target_google_search, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_search_network, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_content_network, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_content_contextual, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_partner_search_network, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PercentCPA=>{:fields=>[], :base=>"BiddingStrategy"}, :PercentCPAAdGroupBids=>{:fields=>[{:name=>:percent_cpa, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"AdGroupBids"}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :RealTimeBiddingSetting=>{:fields=>[{:name=>:opt_in, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Setting"}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :Setting=>{:fields=>[{:name=>:setting_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Stats=>{:fields=>[{:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:network, :type=>"Stats.Network", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:impressions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_position, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_cpc, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:average_cpm, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:ctr, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_per_conversion, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversions_many_per_click, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_rate_many_per_click, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_per_conversion_many_per_click, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:view_through_conversions, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_conv_value, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_per_conv, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_per_conv_many_per_click, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:invalid_clicks, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:invalid_click_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_calls, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_missed_calls, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_received_calls, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:call_duration_secs, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:avg_call_duration_secs, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Bid=>{:fields=>[{:name=>:amount, :type=>"Money", :min_occurs=>0, :max_occurs=>1}]}, :Budget=>{:fields=>[{:name=>:period, :type=>"Budget.BudgetPeriod", :min_occurs=>0, :max_occurs=>1}, {:name=>:amount, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_method, :type=>"Budget.BudgetDeliveryMethod", :min_occurs=>0, :max_occurs=>1}]}, :BudgetOptimizer=>{:fields=>[{:name=>:enhanced_cpc_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingStrategy"}, :BudgetOptimizerAdGroupBids=>{:fields=>[{:name=>:proxy_keyword_max_cpc, :type=>"Bid", :min_occurs=>0, :max_occurs=>1}, {:name=>:proxy_site_max_cpc, :type=>"Bid", :min_occurs=>0, :max_occurs=>1}, {:name=>:enhanced_cpc_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"AdGroupBids"}, :ConversionOptimizerAdGroupBids=>{:fields=>[{:name=>:target_cpa, :type=>"Bid", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_optimizer_bid_type, :type=>"ConversionOptimizerBidType", :min_occurs=>0, :max_occurs=>1}, {:name=>:deduplication_mode, :type=>"ConversionDeduplicationMode", :min_occurs=>0, :max_occurs=>1}], :base=>"AdGroupBids"}, :ManualCPCAdGroupBids=>{:fields=>[{:name=>:keyword_max_cpc, :type=>"Bid", :min_occurs=>0, :max_occurs=>1}, {:name=>:keyword_content_max_cpc, :type=>"Bid", :min_occurs=>0, :max_occurs=>1}, {:name=>:site_max_cpc, :type=>"Bid", :min_occurs=>0, :max_occurs=>1}, {:name=>:enhanced_cpc_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"AdGroupBids"}, :ManualCPMAdGroupBids=>{:fields=>[{:name=>:max_cpm, :type=>"Bid", :min_occurs=>0, :max_occurs=>1}], :base=>"AdGroupBids"}, :AdGroupBids=>{:fields=>[{:name=>:ad_group_bids_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BiddingStrategy=>{:fields=>[{:name=>:bidding_strategy_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BiddingTransition=>{:fields=>[{:name=>:target_bidding_strategy, :type=>"BiddingStrategy", :min_occurs=>0, :max_occurs=>1}, {:name=>:explicit_ad_group_bids, :type=>"AdGroupBids", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_transition_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Campaign=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"CampaignStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:serving_status, :type=>"ServingStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget, :type=>"Budget", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy, :type=>"BiddingStrategy", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_optimizer_eligibility, :type=>"ConversionOptimizerEligibility", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_stats, :type=>"CampaignStats", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_serving_optimization_status, :type=>"AdServingOptimizationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:frequency_cap, :type=>"FrequencyCap", :min_occurs=>0, :max_occurs=>1}, {:name=>:settings, :type=>"Setting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:network_setting, :type=>"NetworkSetting", :min_occurs=>0, :max_occurs=>1}]}, :CampaignOperation=>{:fields=>[{:name=>:bidding_transition, :type=>"BiddingTransition", :min_occurs=>0, :max_occurs=>1}, {:name=>:operand, :type=>"Campaign", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :CampaignPage=>{:fields=>[{:name=>:total_budget, :type=>"Budget", :min_occurs=>0, :max_occurs=>1}, {:name=>:entries, :type=>"Campaign", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :CampaignReturnValue=>{:fields=>[{:name=>:value, :type=>"Campaign", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AdServingOptimizationStatus=>{:fields=>[]}, :"Budget.BudgetDeliveryMethod"=>{:fields=>[]}, :"Budget.BudgetPeriod"=>{:fields=>[]}, :CampaignStatus=>{:fields=>[]}, :ConversionDeduplicationMode=>{:fields=>[]}, :ConversionOptimizerBidType=>{:fields=>[]}, :"ConversionOptimizerEligibility.RejectionReason"=>{:fields=>[]}, :"GeoTargetTypeSetting.NegativeGeoTargetType"=>{:fields=>[]}, :"GeoTargetTypeSetting.PositiveGeoTargetType"=>{:fields=>[]}, :Level=>{:fields=>[]}, :Operator=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :PricingModel=>{:fields=>[]}, :ServingStatus=>{:fields=>[]}, :SortOrder=>{:fields=>[]}, :"Stats.Network"=>{:fields=>[]}, :TimeUnit=>{:fields=>[]}}
    CAMPAIGNSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CAMPAIGNSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CAMPAIGNSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CAMPAIGNSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
