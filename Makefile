version-node-yarn:
	./inc-version.sh node8-yarn

version=`cat node8-yarn/version.txt`

push-node-yarn: version-node-yarn
	git add -A
	git commit -m "Node8-Yarn image updated to version $(version)"
	git push

.PHONY: version-node-yarn
