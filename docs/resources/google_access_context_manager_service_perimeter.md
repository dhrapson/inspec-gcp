---
title: About the google_access_context_manager_service_perimeter resource
platform: gcp
---

## Syntax
A `google_access_context_manager_service_perimeter` is used to test a Google ServicePerimeter resource

## Examples
```

describe.one do
  google_access_context_manager_access_policies(org_id: '190694428152').names.each do |policy_name|
    describe google_access_context_manager_service_perimeter(policy_name: policy_name, name: 'restrict_all') do
      it { should exist }
      its('title') { should cmp 'restrict_all' }
      its('status.restricted_services') { should include 'storage.googleapis.com' }
    end
  end
end
```

## Properties
Properties that can be accessed from the `google_access_context_manager_service_perimeter` resource:


  * `title`: Human readable title. Must be unique within the Policy.

  * `description`: Description of the ServicePerimeter and its use. Does not affect behavior.

  * `create_time`: Time the AccessPolicy was created in UTC.

  * `update_time`: Time the AccessPolicy was updated in UTC.

  * `perimeter_type`: Specifies the type of the Perimeter. There are two types: regular and bridge. Regular Service Perimeter contains resources, access levels, and restricted services. Every resource can be in at most ONE regular Service Perimeter.  In addition to being in a regular service perimeter, a resource can also be in zero or more perimeter bridges. A perimeter bridge only contains resources. Cross project operations are permitted if all effected resources share some perimeter (whether bridge or regular). Perimeter Bridge does not contain access levels or services: those are governed entirely by the regular perimeter that resource is in.  Perimeter Bridges are typically useful when building more complex topologies with many independent perimeters that need to share some data with a common perimeter, but should not be able to share data among themselves.

  * `status`: ServicePerimeter configuration. Specifies sets of resources, restricted services and access levels that determine perimeter content and boundaries.

    * `resources`: A list of GCP resources that are inside of the service perimeter. Currently only projects are allowed. Format: projects/{project_number}

    * `access_levels`: A list of AccessLevel resource names that allow resources within the ServicePerimeter to be accessed from the internet. AccessLevels listed must be in the same policy as this ServicePerimeter. Referencing a nonexistent AccessLevel is a syntax error. If no AccessLevel names are listed, resources within the perimeter can only be accessed via GCP calls with request origins within the perimeter. For Service Perimeter Bridge, must be empty.  Format: accessPolicies/{policy_id}/accessLevels/{access_level_name}

    * `restricted_services`: GCP services that are subject to the Service Perimeter restrictions. Must contain a list of services. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.

  * `parent`: The AccessPolicy this ServicePerimeter lives in. Format: accessPolicies/{policy_id}

  * `name`: Resource name for the ServicePerimeter. The short_name component must begin with a letter and only include alphanumeric and '_'. Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}


## GCP Permissions
