# CiscoMCD Policy Group ID
output "ciscomcd_egressew_policy_id" {
  value = ciscomcd_policy_rule_set.egressew_policy_group.id
}