/*
Copyright (c) 2023 Dell Inc., or its subsidiaries. All Rights Reserved.
Licensed under the Mozilla Public License Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://mozilla.org/MPL/2.0/
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

# Get details of all the firmware catalogs 
data "ome_firmware_catalog" "data-catalog" {
  # Can filter based on the catalog name
  # If empty then all catalogs are returned
  # If invalid name is set that will be ignored
  names = ["example_catalog_1", "example_catalog_2"]
}

output "data-catalog" {
  value = data.ome_firmware_catalog.data-catalog
}
