output "guardduty_invite_accepters_id" {
  description = "Map of id values across all guardduty_invite_accepters, keyed the same as var.guardduty_invite_accepters"
  value       = { for k, v in aws_guardduty_invite_accepter.guardduty_invite_accepters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "guardduty_invite_accepters_detector_id" {
  description = "Map of detector_id values across all guardduty_invite_accepters, keyed the same as var.guardduty_invite_accepters"
  value       = { for k, v in aws_guardduty_invite_accepter.guardduty_invite_accepters : k => v.detector_id if v.detector_id != null && length(v.detector_id) > 0 }
}
output "guardduty_invite_accepters_master_account_id" {
  description = "Map of master_account_id values across all guardduty_invite_accepters, keyed the same as var.guardduty_invite_accepters"
  value       = { for k, v in aws_guardduty_invite_accepter.guardduty_invite_accepters : k => v.master_account_id if v.master_account_id != null && length(v.master_account_id) > 0 }
}
output "guardduty_invite_accepters_region" {
  description = "Map of region values across all guardduty_invite_accepters, keyed the same as var.guardduty_invite_accepters"
  value       = { for k, v in aws_guardduty_invite_accepter.guardduty_invite_accepters : k => v.region if v.region != null && length(v.region) > 0 }
}

