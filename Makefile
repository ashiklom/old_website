MKD = $(shell find . -name '*.md')
HTML = $(MKD:.md=.html)

%.html : %.md
	pandoc $< -o $@

all: $(HTML)
