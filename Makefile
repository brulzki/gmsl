.PHONY: package
package: gmsl.tar.gz

gmsl.tar.gz: gmsl __gmsl gmsl-tests README index.html
	@tar -c -z -v -f $@ $^
