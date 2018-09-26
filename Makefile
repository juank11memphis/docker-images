build-push-node8-yarn:
	cd node8-yarn && \
	docker build -t juancr11/node8-yarn . && \
	docker push juancr11/node8-yarn
