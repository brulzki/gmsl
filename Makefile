.PHONY: package
package: gmsl.tar.gz

gmsl.tar.gz: gmsl __gmsl gmsl-tests README index.html
	@echo Making $@
	@tar -c -z -f $@ $^

.PHONY: test
test:
	@$(MAKE) --warn-undefined-variables -f gmsl-tests

.PHONY: upload
upload:
	@scp index.html jgrahamc@gmsl.sf.net:/home/groups/g/gm/gmsl/htdocs

