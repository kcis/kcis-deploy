TERRAFORM_FLAG = -var-file ${HOME}/.aws/kcis-deploy.tfvars

help:
	terraform || true

show:
	terraform $@

plan apply destroy refresh:
	terraform $@ ${TERRAFORM_FLAG}

plan_destroy:
	terraform plan -destroy ${TERRAFORM_FLAG}
