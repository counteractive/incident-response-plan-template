all: public/plan.md public/plan.html public/plan.docx public/plan.pdf

public/plan.md: build/_plan.md
	mkdir -p public
	mustache info.yml build/_plan.md > public/plan.md

public/plan.html: public/plan.md build/_pandoc.yml
	pandoc --toc --toc-depth=3 --standalone --metadata-file=build/_pandoc.yml --output=public/plan.html public/plan.md

public/plan.docx: public/plan.md build/_pandoc.yml
	pandoc --toc --toc-depth=3 --standalone --metadata-file=build/_pandoc.yml --output=public/plan.docx public/plan.md

public/plan.pdf: public/plan.md build/_pandoc.yml
	pandoc --toc --toc-depth=3 --standalone --metadata-file=build/_pandoc.yml --output=public/plan.pdf public/plan.md

build/_pandoc.yml: info.yml pandoc.yml
	mkdir -p build
	mustache info.yml pandoc.yml > build/_pandoc.yml

build/_plan.md: *.md playbooks/*.md reference/*.md roles/*.md
	mkdir -p build
	cat during.md \
	    playbooks/index.md playbooks/playbook-*.md \
	    roles/index.md roles/role-*.md \
	    after.md about.md > build/_plan.md

todo:
	grep --color --recursive \
	     --exclude='Makefile' --exclude='README.md' \
	     --exclude-dir='public' --exclude-dir='build' --exclude-dir='examples' \
	     'TODO:' .

clean:
	rm -rf public
	rm -rf build

.PHONY: todo clean
