variable "guardduty_invite_accepters" {
  description = <<EOT
Map of guardduty_invite_accepters, attributes below
Required:
    - detector_id
    - master_account_id
Optional:
    - region
EOT

  type = map(object({
    detector_id       = string
    master_account_id = string
    region            = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

