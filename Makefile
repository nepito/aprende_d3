mutants:
	yarn
	yarn workspace bubbles stryker run

.PHONY: clean mutants tests

clean: 
	rm --force --recursive node_modules
	rm --force --recursive **/coverage
	rm --force --recursive **/node_modules
	rm --force --recursive **/reports
	rm --force yarn.lock
tests:
	yarn
	yarn test -u
