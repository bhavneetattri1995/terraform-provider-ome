---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ome_template_info Data Source - terraform-provider-ome"
subcategory: ""
description: |-
  Data Source to list the Template details from OpenManage Enterprise
---

# ome_template_info (Data Source)

Data Source to list the Template details from OpenManage Enterprise

## Example Usage

```terraform
# get the template details 
data "ome_template_info" "data-template-1" {
  name = "template_1"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String) Name of the template.

### Optional

- `attributes` (List of Object) List of attributes associated with template. (see [below for nested schema](#nestedatt--attributes))
- `content` (String) The XML content of template from which the template will be created
- `description` (String) Description for the template.
- `id` (String) Id of the template.
- `refdevice_id` (Number) Target device id from which the template is created.
- `vlan` (Object) VLAN details to be attached with template. (see [below for nested schema](#nestedatt--vlan))

### Read-Only

- `device_type_id` (Number) Template type ID, indicating the type of device for which configuration is supported, current supported device is server
- `identity_pool_id` (Number) ID of the Identity Pool attached with template.
- `view_type_id` (Number) OME template view type id.

<a id="nestedatt--attributes"></a>
### Nested Schema for `attributes`

Optional:

- `attribute_id` (Number)
- `display_name` (String)
- `is_ignored` (Boolean)
- `value` (String)


<a id="nestedatt--vlan"></a>
### Nested Schema for `vlan`

Optional:

- `bonding_technology` (String)
- `propogate_vlan` (Boolean)
- `vlan_attributes` (List of Object) (see [below for nested schema](#nestedobjatt--vlan--vlan_attributes))

<a id="nestedobjatt--vlan--vlan_attributes"></a>
### Nested Schema for `vlan.vlan_attributes`

Optional:

- `is_nic_bonded` (Boolean)
- `nic_identifier` (String)
- `port` (Number)
- `tagged_networks` (List of Number)
- `untagged_network` (Number)

