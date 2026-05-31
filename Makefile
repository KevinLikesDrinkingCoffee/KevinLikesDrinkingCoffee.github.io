PYTHON ?= python3
JEMDOC := $(PYTHON) -W ignore::SyntaxWarning tools/jemdoc.py

.PHONY: all html clean serve

all: html

html: index.html projects.html

index.html: index.jemdoc MENU site.conf site.css tools/jemdoc.py
	$(JEMDOC) -c site.conf index.jemdoc

projects.html: projects.jemdoc MENU site.conf site.css tools/jemdoc.py
	$(JEMDOC) -c site.conf projects.jemdoc

clean:
	rm -f index.html projects.html

serve: html
	$(PYTHON) -m http.server 8000
