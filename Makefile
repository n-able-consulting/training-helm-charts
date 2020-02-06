.PHONY : all
all : sso-app-frontend sso-app-backend

.PHONY: sso-app-frontend
sso-app-frontend:
	helm package src/sso-app-frontend -d charts/
	cd charts && helm repo index .

.PHONY: sso-app-backend
sso-app-frontend:
	helm package src/sso-app-backend -d charts/
	cd charts && helm repo index .