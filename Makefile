.PHONY : all
all : sso-app-frontend sso-app-backend client-ip

.PHONY: sso-app-frontend
sso-app-frontend:
	helm package ./src/sso-app-frontend -d charts/
	cd charts && helm repo index .

.PHONY: sso-app-backend
sso-app-backend:
	helm package ./src/sso-app-backend -d charts/
	cd charts && helm repo index .

.PHONY: client-ip
client-ip:
	helm package ./src/client-ip -d charts/
	cd charts && helm repo index .