# run from root dir of the project
test:
	cd app/ && npm install
	cd app/ && npm install --save-dev jest
	cd app/ && npx jest tests/root.test.js

clean-up:
	rm -r app/node_modules
	rm -r node_modules/
	rm package-lock.json
