all: srd.html

srd.asciidoc: srd.py
	python3 srd.py > srd.asciidoc

srd.html:	srd.asciidoc
	asciidoc -a toc srd.asciidoc

clean:
	rm -rf __pycache__ *~ *asciidoc *.pyc *.html
