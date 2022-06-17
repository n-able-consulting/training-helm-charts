.PHONY : all
all : sso-app-frontend sso-app-backend client-ip hello-svc quote-svc wi wd wdj wdp wip key voting-front hello-world-configmap ul ul-frontend

.PHONY: ul
ul:
	helm package ./src/ul -d charts/
	cd charts && helm repo index .

.PHONY: ul-frontend
ul-frontend:
	helm package ./src/ul-frontend -d charts/
	cd charts && helm repo index .

.PHONY: hello-world-configmap
hello-world-configmap:
	helm package ./src/hello-world-configmap -d charts/
	cd charts && helm repo index .

.PHONY: voting-front
voting-front:
	helm package ./src/voting-front -d charts/
	cd charts && helm repo index .

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

.PHONY: wd
wd:
	helm package ./src/wordpress-dump -d charts/
	cd charts && helm repo index .

.PHONY: wdj
wdj:
	helm package ./src/wordpress-dump-job -d charts/
	cd charts && helm repo index .

.PHONY: wdp
wdp:
	helm package ./src/wordpress-dump-pod -d charts/
	cd charts && helm repo index .

.PHONY: wip
wip:
	helm package ./src/wordpress-import-pod -d charts/
	cd charts && helm repo index .

.PHONY: key
key:
	helm package ./src/keycloak -d charts/
	cd charts && helm repo index .