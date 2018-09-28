clean:
		kubectl delete deployment hello-ignite2018
		kubectl delete svc hello-ignite
		sudo rm -rf .vscode docker-compose.debug.yml docker-compose.yml Dockerfile .dockerignore