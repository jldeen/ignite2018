clean:
		kubectx docker-for-desktop
		sudo rm -rf .vscode docker-compose.debug.yml docker-compose.yml Dockerfile .dockerignore charts .draft-tasks.toml .draftignore draft.toml
		helm delete --purge ignite2018
		
newk8s:
		kubectl delete deployment hello-ignite2018
		kubectl delete svc hello-ignite