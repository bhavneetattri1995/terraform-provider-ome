---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "ome_configuration_compliance Resource - terraform-provider-ome"
subcategory: ""
description: |-
  Resource for managing configuration baselines remediation. Updates are supported for the following parameters: target_devices, job_retry_count, sleep_interval, run_later, cron.
---

# ome_configuration_compliance (Resource)

Resource for managing configuration baselines remediation. Updates are supported for the following parameters: `target_devices`, `job_retry_count`, `sleep_interval`, `run_later`, `cron`.

## Example Usage

```terraform
# Manage remediation using baseline and Device Servicetags
resource "ome_configuration_compliance" "remeditation" {
	baseline_name = "baseline_name"
	target_devices = [
      {
        device_service_tag = "MX12345"
        compliance_status = "Compliant"
      }
    ]
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `target_devices` (Attributes Set) Target devices to be remediated. (see [below for nested schema](#nestedatt--target_devices))

### Optional

- `baseline_id` (Number) Id of the Baseline.
- `baseline_name` (String) Name of the Baseline.
- `cron` (String) Cron to schedule the remediation task.
- `job_retry_count` (Number) Number of times the job has to be polled to get the final status of the resource.
- `run_later` (Boolean) Provides options to schedule the remediation task immediately, or at a specified time.
- `sleep_interval` (Number) Sleep time interval for job polling in seconds.

### Read-Only

- `id` (String) ID of the resource.

<a id="nestedatt--target_devices"></a>
### Nested Schema for `target_devices`

Required:

- `compliance_status` (String) End compliance status of the target device, used to check the drifts in the compliance status.
- `device_service_tag` (String) Target device servicetag to be remediated.

