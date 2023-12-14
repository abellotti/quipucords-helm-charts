#
# Makefile for the Discovery Helm Repo.
#
#

all:	help

update:
	@echo "Updating the Discovery helm repo ..."
	mkdir -p charts/discovery
	helm package ../quipucords-deployer/discovery --destination ./charts
	cp ../quipucords-deployer/discovery/icon.png ./charts/discovery/
	helm repo index ./charts

help:
	@echo "Makefile for the Discovery Helm Repo."
	@echo ""
	@echo "Make targets:"
	@echo "  help              Shows this output."
	@echo "  update            Package the charts from quipucords-deployer and update the index."

