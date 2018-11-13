clean:
		-kubectx docker-for-desktop
		-helm delete --purge ignite2018
		-kubectx jdk8s
		-azds down
		-sudo rm -rf .vscode docker-compose.debug.yml docker-compose.yml Dockerfile .dockerignore charts .draft-tasks.toml .draftignore draft.toml azds.yaml
		-git stash
		-git stash drop stash@{0}
newk8s:
		kubectl delete deployment hello-ignite2018
		kubectl delete svc hello-ignite