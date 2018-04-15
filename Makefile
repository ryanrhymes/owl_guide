# Please only configure API_SRC to point to correct Owl src folder.
API_SRC="/Users/liang.wang/code/owl/src/"

# No need to touch the following settings.
ROOT := $(dir $(lastword $(MAKEFILE_LIST)))
PARSER ="${ROOT}bin/apidoc.ml"
API_DST="${ROOT}book/apidoc/"
API_LST="${ROOT}bin/module.txt"


all:
	${PARSER} ${API_SRC} ${API_DST} ${API_LST}
	cd ${ROOT}book && make html && cd -
install:
	scp -r -i ~/.ssh/id_cam book/_build/html/* lw525@slogin.cl.cam.ac.uk:~/public_html/owl/
clean:
	rm -rf ./book/_build
	rm -rf ./book/apidoc/*.rst
	rm -rf *.html *.css
