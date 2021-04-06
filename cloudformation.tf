# # cloud formation stack to provision the aws ec2 instance

# resource "aws_cloudformation_stack_set_instance" "sampleinstance" {
#     name = "vpc-stack-1"

#     parameter_overrides = {
#       "vpc" = "value"
#     }
#     template_body = << stack
# {
#     "parameters" = 
# }

# }