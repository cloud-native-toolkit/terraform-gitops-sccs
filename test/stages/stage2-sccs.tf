module "gitops_sccs" {
  source = "./module"

  gitops_config = module.gitops.gitops_config
  git_credentials = module.gitops.git_credentials
  namespace = var.namespace
  service_account = var.service_account_name
  sccs = ["anyuid","privileged"]
  server_name = module.gitops.server_name
  group = var.scc_group
}
