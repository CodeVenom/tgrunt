include "root" {
  path = find_in_parent_folders()
}

# dependency example
#dependencies {
#  paths = [
#    "../one",
#    "../bla",
#  ]
#}

dependency "one" {
  config_path = "../one"

  mock_outputs = {
    something = "fake-something"
  }

  mock_outputs_merge_strategy_with_state = "shallow"
}

inputs = {
  something = dependency.one.outputs.something
}
