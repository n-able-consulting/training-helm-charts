.PHONY : all
all : sso-app-frontend sso-app-backend client-ip hello-svc quote-svc wi

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

.PHONY: hello-svc
hello-svc:
	helm package ./src/hello-svc -d charts/
	cd charts && helm repo index .

.PHONY: quote-svc
quote-svc:
	helm package ./src/quote-svc -d charts/
	cd charts && helm repo index .

.PHONY: wi
wi:
	helm package ./src/wordpress-import -d charts/
	cd charts && helm repo index .