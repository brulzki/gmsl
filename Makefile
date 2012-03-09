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
	@echo "cd /home/project-web/gmsl/htdocs" > gmsl_sftp_batch
	@echo "put index.html" >> gmsl_sftp_batch
	@sftp -b gmsl_sftp_batch jgrahamc@web.sf.net
	@rm gmsl_sftp_batch

