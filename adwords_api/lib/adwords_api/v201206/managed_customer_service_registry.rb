# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-04 07:27:16.

require 'adwords_api/errors'

module AdwordsApi; module V201206; module ManagedCustomerService
  class ManagedCustomerServiceRegistry
    MANAGEDCUSTOMERSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"ManagedCustomerPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"ManagedCustomerOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"ManagedCustomerReturnValue", :min_occurs=>0, :max_occurs=>1}]}}}
    MANAGEDCUSTOMERSERVICE_TYPES = {:DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :Operator=>{:fields=>[], :ns=>0}, :"Predicate.Operator"=>{:fields=>[], :ns=>0}, :SortOrder=>{:fields=>[], :ns=>0}, :ManagedCustomerLink=>{:fields=>[{:name=>:manager_customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :ManagedCustomer=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:login, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:company_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:can_manage_clients, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:date_time_zone, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ManagedCustomerOperation=>{:fields=>[{:name=>:operand, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :ManagedCustomerPage=>{:fields=>[{:name=>:entries, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:links, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :ManagedCustomerReturnValue=>{:fields=>[{:name=>:value, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>:unbounded}]}}
    MANAGEDCUSTOMERSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201206"]

    def self.get_method_signature(method_name)
      return MANAGEDCUSTOMERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return MANAGEDCUSTOMERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return MANAGEDCUSTOMERSERVICE_NAMESPACES[index]
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
