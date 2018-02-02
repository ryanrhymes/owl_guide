API_SRC="/Users/liang/code/owl/src/"
API_DST="/Users/liang/code/owl_guide/book/apidoc/"
API_LST="/Users/liang/code/owl_guide/bin/module.txt"

all:
	./bin/apidoc.ml ${API_SRC} ${API_DST} ${API_LST}
	cd book && make html && cd ../
install:
	scp -r -i ~/.ssh/id_cam book/_build/html/* lw525@slogin.cl.cam.ac.uk:~/public_html/owl/
clean:
	rm -rf *.html *.css
