# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.8 on 2015-04-28 16:45:08.

require 'ads_common/savon_service'
require 'dfp_api/v201505/product_template_service_registry'

module DfpApi; module V201505; module ProductTemplateService
  class ProductTemplateService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201505'
      super(config, endpoint, namespace, :v201505)
    end

    def create_product_templates(*args, &block)
      return execute_action('create_product_templates', args, &block)
    end

    def get_product_templates_by_statement(*args, &block)
      return execute_action('get_product_templates_by_statement', args, &block)
    end

    def perform_product_template_action(*args, &block)
      return execute_action('perform_product_template_action', args, &block)
    end

    def update_product_templates(*args, &block)
      return execute_action('update_product_templates', args, &block)
    end

    private

    def get_service_registry()
      return ProductTemplateServiceRegistry
    end

    def get_module()
      return DfpApi::V201505::ProductTemplateService
    end
  end
end; end; end
