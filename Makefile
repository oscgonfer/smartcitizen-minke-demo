.PHONY: package release

all: package

package:
# 	rm dist/*
	jupyter-book build .

release: package
	ghp-import -n -p -f _build/html

clean:
	rm -rf _build/*