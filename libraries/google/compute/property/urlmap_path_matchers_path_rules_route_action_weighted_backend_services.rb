# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_weighted_backend_services_header_action'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_weighted_backend_services_header_action_request_headers_to_add'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_weighted_backend_services_header_action_response_headers_to_add'
module GoogleInSpec
  module Compute
    module Property
      class UrlMapPathMatchersPathRulesRouteActionWeightedBackendServices
        attr_reader :backend_service

        attr_reader :header_action

        attr_reader :weight

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @backend_service = args['backendService']
          @header_action = GoogleInSpec::Compute::Property::UrlMapPathMatchersPathRulesRouteActionWeightedBackendServicesHeaderAction.new(args['headerAction'], to_s)
          @weight = args['weight']
        end

        def to_s
          "#{@parent_identifier} UrlMapPathMatchersPathRulesRouteActionWeightedBackendServices"
        end
      end

      class UrlMapPathMatchersPathRulesRouteActionWeightedBackendServicesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return UrlMapPathMatchersPathRulesRouteActionWeightedBackendServices.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| UrlMapPathMatchersPathRulesRouteActionWeightedBackendServices.new(v, parent_identifier) }
        end
      end
    end
  end
end
