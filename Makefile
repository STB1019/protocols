MODE := draft

protocol_*:
	@echo "compiling $@"
	echo '\def\mode$(MODE){1}\input{protocol.tex}' > $@/__tmp.tex
	cd $@ && latexmk -synctex=1 -interaction=nonstopmode -file-line-error -lualatex -outdir=../texout/ -jobname=$@ -shell-escape __tmp.tex
	rm -rf ./**/__tmp.tex || exit 0
	[ ! -d out ] && mkdir -p out || exit 0
	[ -f texout/$@.pdf ] && mv texout/$@.pdf "out/$@.pdf"

clean:
	rm -rf texout || exit 0
	rm -rf ./**/_markdown_protocol_*/ || exit 0
	rm -rf ./**/__tmp.tex || exit 0

cleanall: clean
	rm -rf out

all: clean protocol_*

.PHONY: all clean cleanall protocol_*