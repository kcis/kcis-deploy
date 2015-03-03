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

pack_web:
	rm -f build/$@.*
	mkdir -p build
	packer build ${PACKER_FLAG} web.json 2>&1 | tee build/$@.log
	tail -2 build/$@.log | head -2 | awk 'match($$0, /ami-.*/) { print substr($$0, RSTART, RLENGTH) }' > build/$@.amifile
	test -f build/$@.amifile
