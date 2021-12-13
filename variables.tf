variable "prefix" {
  type = string
  description = "The resource name prefix"
  default="from_vcs"
}


variable "keepers" {
  description = "Arbitrary map of values that, when changed, will trigger a new id to be generated."
  type        = map
  default     = {}
}

variable "length" {
  type = number
  default = 24
  description = "The length of the string desired."
}
