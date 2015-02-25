TERRAFORM_FLAG = -var-file ${HOME}/.aws/kcis-deploy.json
PACKER_FLAG = -var-file ${HOME}/.aws/kcis-deploy.json

help:
	terraform || true

show:
	terraform $@

plan apply destroy refresh:
	terraform $@ ${TERRAFORM_FLAG}

plan_destroy:
	terraform plan -destroy ${TERRAFORM_FLAG}

kcis-web.stamp:
	packer build ${PACKER_FLAG} web.json
