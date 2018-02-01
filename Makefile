all:
	cd book && make html && cd ../
install:
	scp -r -i ~/.ssh/id_cam book/_build/html/* lw525@slogin.cl.cam.ac.uk:~/public_html/owl/
clean:
	rm -rf *.html *.css
