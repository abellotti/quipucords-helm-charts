#
# Makefile for the Discovery Helm Repo.
#
#

all:	help

update:
	@echo "Updating the Discovery helm repo ..."
	mkdir -p charts/discovery
	helm package ../quipucords-helm-chart/discovery --destination ./charts
	cp ../quipucords-helm-chart/discovery/icon.png ./charts/discovery/
	helm repo index ./charts

help:
	@echo "Makefile for the Discovery Helm Repo."
	@echo ""
	@echo "Make targets:"
	@echo "  help              Shows this output."
	@echo "  update            Package the chart from quipucords-helm-chart and update the index."

