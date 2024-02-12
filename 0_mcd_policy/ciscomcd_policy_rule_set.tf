# Access the CiscoMCD Egress/EW Policy Name
resource "ciscomcd_policy_rule_set" "egress_policy_standalone" {
  name = var.ciscomcd_egressew_policy_name
}

# Create the CiscoMCD Egress/EW Policy Rule Set Group
resource "ciscomcd_policy_rule_set" "egressew_policy_group" {
  name = var.ciscomcd_egressew_policy_group_name
  type = "GROUP"
  group_member_ids = [
    ciscomcd_policy_rule_set.egress_policy_standalone.id
  ]
}