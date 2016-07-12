all: gen/sample.html

gen: 
	mkdir gen

gen/original.json: gen
	perl6 --profile --profile-filename=gen/original.html -e 'for 1..10000 -> $$i { sum 1..$$i}'
	grep rawData gen/original.html | head -1 > gen/original.json

gen/template.html:
	cp templates/template.html gen/template.html

gen/sample.html: gen/original.json gen/template.html
	perl6 bin/construct.p6 templates/template.html gen/original.json > gen/sample.html
	@echo "new sample in gen/sample.html"

clean:
	rm gen/*
