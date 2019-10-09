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
module GoogleInSpec
  module Dataproc
    module Property
      class ClusterConfigMasterConfigDiskConfig
        attr_reader :arguments

        attr_reader :boot_disk_type

        attr_reader :boot_disk_size_gb

        attr_reader :num_local_ssds

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @boot_disk_type = arguments['bootDiskType']
          @boot_disk_size_gb = arguments['bootDiskSizeGb']
          @num_local_ssds = arguments['numLocalSsds']
        end

        def to_s
          "#{@parent_identifier} ClusterConfigMasterConfigDiskConfig"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'boot_disk_type' => ->(x, path) { x.nil? ? [] : ["its('#{path}.boot_disk_type') { should cmp #{x.inspect} }"] },
            'boot_disk_size_gb' => ->(x, path) { x.nil? ? [] : ["its('#{path}.boot_disk_size_gb') { should cmp #{x.inspect} }"] },
            'num_local_ssds' => ->(x, path) { x.nil? ? [] : ["its('#{path}.num_local_ssds') { should cmp #{x.inspect} }"] },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, current_path)
          end
        end

        def to_json(*_args)
          @arguments.to_json
        end

        # other is a string representation of this object
        def ==(other)
          @arguments == JSON.parse(other)
        end
      end
    end
  end
end