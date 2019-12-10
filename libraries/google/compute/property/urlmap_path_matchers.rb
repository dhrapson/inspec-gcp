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
require 'google/compute/property/urlmap_path_matchers_header_action'
require 'google/compute/property/urlmap_path_matchers_header_action_request_headers_to_add'
require 'google/compute/property/urlmap_path_matchers_header_action_response_headers_to_add'
require 'google/compute/property/urlmap_path_matchers_path_rules'
module GoogleInSpec
  module Compute
    module Property
      class UrlMapPathMatchers
        attr_reader :default_service

        attr_reader :description

        attr_reader :header_action

        attr_reader :name

        attr_reader :path_rules

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @default_service = args['defaultService']
          @description = args['description']
          @header_action = GoogleInSpec::Compute::Property::UrlMapPathMatchersHeaderAction.new(args['headerAction'], to_s)
          @name = args['name']
          @path_rules = GoogleInSpec::Compute::Property::UrlMapPathMatchersPathRulesArray.parse(args['pathRules'], to_s)
        end

        def to_s
          "#{@parent_identifier} UrlMapPathMatchers"
        end
      end

      class UrlMapPathMatchersArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return UrlMapPathMatchers.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| UrlMapPathMatchers.new(v, parent_identifier) }
        end
      end
    end
  end
end
