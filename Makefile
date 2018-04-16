# Please only configure API_SRC to point to correct Owl src folder.
API_SRC="/Users/liang.wang/code/owl/src/"

# No need to touch the following settings.
ROOT := $(dir $(lastword $(MAKEFILE_LIST)))
PARSER ="${ROOT}bin/apidoc.ml"
API_DST="${ROOT}book/apidoc/"
API_LST="${ROOT}bin/module.txt"

# owlbarn github url and local folder
DOC_URL="https://github.com/owlbarn/owlbarn.github.io.git"
DOC_DIR="${ROOT}_tmp/owlbarn.github.io"


all:
	${PARSER} ${API_SRC} ${API_DST} ${API_LST}
	cd ${ROOT}book && make html && cd -
install:
	# scp -r -i ~/.ssh/id_cam book/_build/html/* lw525@slogin.cl.cam.ac.uk:~/public_html/owl/
	# kinit lw525@AD.CL.CAM.AC.UK
	scp -o GSSAPIAuthentication=yes -r book/_build/html/* lw525@slogin-serv.cl.cam.ac.uk:~/public_html/owl/
github:
	@if test ! -d ${DOC_DIR}; then mkdir -p ${DOC_DIR} && git clone ${DOC_URL} ${DOC_DIR}; else cd ${DOC_DIR} && git pull origin master; fi
	cp -r ${ROOT}book/_build/html/* ${DOC_DIR}
	cd ${DOC_DIR} && git commit -am "PR from script ..." && git push origin master
clean:
	rm -rf ${ROOT}book/_build
	rm -rf ${ROOT}book/apidoc/*.rst
	rm -rf ${DOC_DIR}
	rm -rf *.html *.css
