NODE = node
NPM = npm
JSDOC = jsdoc
name = all
 

generate_dash_docs:
	jsdoc -c conf.json -t docs/jsdoc-template/
generate_docs:
	# cp -R ./HISTORY.md ./docs/content/meta/release-notes.md
	hugo -s docs/reference -d ../../public
	$(JSDOC) -c conf.json -t docs/jsdoc-template/ -d ./public/api
	cp -R ./public/api/scripts ./public/.
	cp -R ./public/api/styles ./public/.
