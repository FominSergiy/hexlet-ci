# run from root dir of the project
test:
	test -e $(CURDIR)/app/README.md || exit
	test -e $(CURDIR)/app/.github/workflows/workflow.yml || exit
	cd app/ && npm install
	cd app/ && npm install --save-dev jest
	cd app/ && npx jest tests/root.test.js

clean-up:
	rm -r app/node_modules
	rm -r node_modules/
	rm package-lock.json
