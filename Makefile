build:
	zola build

check:
	zola check

publish: build check
	git switch pages
	git --work-tree=public add .
	git --work-tree=public commit || true
	git push -u origin pages
	git switch -

.PHONY: build check publish
