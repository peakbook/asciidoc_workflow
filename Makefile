MAIN = main.adoc
SRCS = $(wildcard docs/*.adoc) $(MAIN)
DST = main

all: html

html: $(SRCS)
	asciidoctor \
	--backend html5 \
	-a data-uri \
	-r asciidoctor-diagram \
	$(MAIN) -o $(DST).html

clean:
	-rm $(DST).html
	-rm autogen/*

.PHONY: html clean
