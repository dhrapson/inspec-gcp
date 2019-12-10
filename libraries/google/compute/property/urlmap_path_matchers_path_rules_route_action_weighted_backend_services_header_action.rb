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
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_weighted_backend_services_header_action_request_headers_to_add'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_weighted_backend_services_header_action_response_headers_to_add'
module GoogleInSpec
  module Compute
    module Property
      class UrlMapPathMatchersPathRulesRouteActionWeightedBackendServicesHeaderAction
        attr_reader :request_headers_to_add

        attr_reader :request_headers_to_remove

        attr_reader :response_headers_to_add

        attr_reader :response_headers_to_remove

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @request_headers_to_add = GoogleInSpec::Compute::Property::UrlMapPathMatchersPathRulesRouteActionWeightedBackendServicesHeaderActionRequestHeadersToAddArray.parse(args['requestHeadersToAdd'], to_s)
          @request_headers_to_remove = args['requestHeadersToRemove']
          @response_headers_to_add = GoogleInSpec::Compute::Property::UrlMapPathMatchersPathRulesRouteActionWeightedBackendServicesHeaderActionResponseHeadersToAddArray.parse(args['responseHeadersToAdd'], to_s)
          @response_headers_to_remove = args['responseHeadersToRemove']
        end

        def to_s
          "#{@parent_identifier} UrlMapPathMatchersPathRulesRouteActionWeightedBackendServicesHeaderAction"
        end
      end
    end
  end
end
