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
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_cors_policy'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_fault_injection_policy'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_fault_injection_policy_abort'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_fault_injection_policy_delay'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_fault_injection_policy_delay_fixed_delay'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_request_mirror_policy'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_retry_policy'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_retry_policy_per_try_timeout'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_timeout'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_url_rewrite'
require 'google/compute/property/urlmap_path_matchers_path_rules_route_action_weighted_backend_services'
require 'google/compute/property/urlmap_path_matchers_path_rules_url_redirect'
module GoogleInSpec
  module Compute
    module Property
      class UrlMapPathMatchersPathRules
        attr_reader :service

        attr_reader :paths

        attr_reader :route_action

        attr_reader :url_redirect

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @service = args['service']
          @paths = args['paths']
          @route_action = GoogleInSpec::Compute::Property::UrlMapPathMatchersPathRulesRouteAction.new(args['routeAction'], to_s)
          @url_redirect = GoogleInSpec::Compute::Property::UrlMapPathMatchersPathRulesUrlRedirect.new(args['urlRedirect'], to_s)
        end

        def to_s
          "#{@parent_identifier} UrlMapPathMatchersPathRules"
        end
      end

      class UrlMapPathMatchersPathRulesArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return UrlMapPathMatchersPathRules.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| UrlMapPathMatchersPathRules.new(v, parent_identifier) }
        end
      end
    end
  end
end
