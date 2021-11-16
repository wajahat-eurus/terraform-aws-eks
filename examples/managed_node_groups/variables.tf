variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "777777777777",
    "888888888888",
  ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::489994096722:role/AdminAccess"
      username = "EurusEKSAdmin"
      groups   = ["system:masters"]
    },
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::489994096722:user/wajahat"
      username = "wajahat"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::489994096722:user/waqar"
      username = "waqar"
      groups   = ["system:masters"]
    },
  ]
}
