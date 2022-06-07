terragrunt role in central account
can assume all relevant roles in peripheral accounts

something about sources
--terragrunt-source
--terragrunt-source-update

terragrunt with private git repos
https://terragrunt.gruntwork.io/docs/features/keep-your-terraform-code-dry/#using-terragrunt-with-private-git-repos

do stuff with everything
terragrunt run-all validate
terragrunt run-all plan
terragrunt run-all apply
terragrunt run-all destroy

do not prompt for input
terragrunt run-all apply --terragrunt-non-interactive
terragrunt run-all destroy --terragrunt-non-interactive
