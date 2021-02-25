.PHONY: error
error:
	exit 1

.PHONY: argocd
argocd:
	curl https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml -o argocd/base/upstream/install.yaml

.PHONY: notifications
notifications:
	curl https://raw.githubusercontent.com/argoproj-labs/argocd-notifications/v1.0.2/manifests/install.yaml -o argocd-notifications/base/upstream/install.yaml
	curl https://raw.githubusercontent.com/argoproj-labs/argocd-notifications/v1.0.2/catalog/install.yaml -o argocd-notifications/base/upstream/catalog.yaml
