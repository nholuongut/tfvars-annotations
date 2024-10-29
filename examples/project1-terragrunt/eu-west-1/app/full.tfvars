terragrunt = {
  terraform = {
    source = "."
  }
}

################
# Static values
################

title = "This value is not going to be changed by tfvars-annotations"

#################
# Dynamic values
#################

name = "Nho Luong" # @tfvars:terragrunt_output.core.name

score = "37" # @tfvars:terragrunt_output.core.score

name_as_list = ["Nho Luong"] # @tfvars:terragrunt_output.core.name.to_list

love_sailing = "true" # @tfvars:terragrunt_output.core.love_sailing

understand_how_to_use_twitter = "false" # @tfvars:terragrunt_output.core.understand_how_to_use_twitter

languages = [
  "ukrainian",
  "russian",
  "english",
  "norwegian",
  "spanish",
] # @tfvars:terragrunt_output.core.languages

###############
# Compositions
###############

custom_map = {
  Score      = "37"            # @tfvars:terragrunt_output.core.score
  Name       = "Nho Luong" # @tfvars:terragrunt_output.core.name
  MixedValue = ""              # @ tfvars:terragrunt_output.core.mixed_value <-- same reason as below. Maps are tricky.
}

######
# These don't work yet because there are `maps` inside of them.
######
list_of_properties = "" # @ tfvars:terragrunt_output.core.list_of_properties

map_of_properties = "" # @ tfvars:terragrunt_output.core.map_of_properties

mixed_value = "" # @ tfvars:terragrunt_output.core.mixed_value
