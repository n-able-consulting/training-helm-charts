.PHONY: sso-app-frontend
sso-app-frontend:
	helm package src/ -d charts/
	cd charts && helm repo index .