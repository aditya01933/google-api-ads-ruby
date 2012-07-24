# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-04 07:24:23.

require 'adwords_api/errors'

module AdwordsApi; module V201109_1; module BudgetOrderService
  class BudgetOrderServiceRegistry
    BUDGETORDERSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"BudgetOrderPage", :min_occurs=>0, :max_occurs=>1}]}}, :get_billing_accounts=>{:input=>[], :output=>{:name=>"get_billing_accounts_response", :fields=>[{:name=>:rval, :type=>"BillingAccount", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"BudgetOrderOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"BudgetOrderReturnValue", :min_occurs=>0, :max_occurs=>1}]}}}
    BUDGETORDERSERVICE_TYPES = {:DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue", :ns=>0}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue", :ns=>0}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue", :ns=>0}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue", :ns=>0}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :Operator=>{:fields=>[], :ns=>0}, :"Predicate.Operator"=>{:fields=>[], :ns=>0}, :SortOrder=>{:fields=>[], :ns=>0}, :BillingAccount=>{:fields=>[{:name=>:id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :BudgetOrder=>{:fields=>[{:name=>:billing_account_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:spending_limit, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :BudgetOrderOperation=>{:fields=>[{:name=>:operand, :type=>"BudgetOrder", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :BudgetOrderPage=>{:fields=>[{:name=>:entries, :type=>"BudgetOrder", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :BudgetOrderReturnValue=>{:fields=>[{:name=>:value, :type=>"BudgetOrder", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}}
    BUDGETORDERSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201109_1"]

    def self.get_method_signature(method_name)
      return BUDGETORDERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return BUDGETORDERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return BUDGETORDERSERVICE_NAMESPACES[index]
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
