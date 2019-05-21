BRANCH ?= jenkins
SUBSCRIPTION ?= "jessde"
RG ?= jdk8s-us

.PHONY: clean  helm-delete

all:
	-make clean
	-make helm-delete

clean:
	-kubectx docker-for-desktop
	-helm delete --purge ignite2018
	-docker-compose -f "docker-compose.debug.yml" down
	-rm -rf charts draft.toml Dockerfile .draftignore .dockerignore .draft-tasks.toml target .classpath .project docker-compose.debug.yml docker-compose.yml

helm-delete:
	-kubectx jdk8s-us
	-helm delete --purge ignite2018
	-kubectx docker-for-desktop

# delete-branch: 
# 	-git branch -d $(BRANCH)
# 	-git push origin -d $(BRANCH) && echo "$(branch) branch successfully deleted"
# 	-git fetch --prune

# git-clean:
# 	- git checkout master
# 	- git branch -D build19
# 	- git push origin --delete build19
# 	- rm azure-pipelines.yml
# 	- git commit -am "reset demo"
# 	- git push
