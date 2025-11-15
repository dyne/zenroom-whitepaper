## Generic template for IEEE and Arxiv publication with POC and benchmarks
# latest recent largest use: SD-BLS (for reference)

# POC:
# 	zenroom -l common.lua POC.lua

TARGET := our-next-paper

arxiv: compose-arxiv
	pdflatex $(TARGET)
	bibtex   $(TARGET)
	pdflatex $(TARGET)
	pdflatex $(TARGET)

arxiv-zip: compose-arxiv
	@rm -rf $(TARGET)-arxiv $(TARGET)-arxiv.zip && mkdir -p $(TARGET)-arxiv
	@cp $(TARGET).tex $(TARGET).bbl arxiv.sty *converted-to.pdf *.eps $(TARGET)-arxiv
	@zip -r $(TARGET)-arxiv.zip $(TARGET)-arxiv/*
# epstopdf verifyrevocations.eps
# epstopdf issueproveverify.eps
# epstopdf hamming.eps

ieee: compose-ieee
	pdflatex $(TARGET)
	bibtex   $(TARGET)
	pdflatex $(TARGET)
	pdflatex $(TARGET)

compose-ieee:
	@cat head-ieee.tex $(TARGET).body.tex > $(TARGET).tex

compose-arxiv:
	@cat head-arxiv.tex $(TARGET).body.tex > $(TARGET).tex

clean:
	rm -f *blg *bbl *dvi *pdf *toc *out *aux *log *lof
	rm -f *converted-to*
	rm -f *.txt *.png

clean-eps:
	rm -f *.eps

# figures: issueproveverify.eps verifyrevocations.eps pvss.eps

%.png: %.txt %.gnuplot
	sed 's/TERM/pngcairo dashed rounded size 1024,768/' \
		$(basename $@).gnuplot | gnuplot  > $(basename $@).png

%.eps: %.txt %.gnuplot
	sed 's/TERM/eps/' \
		$(basename $@).gnuplot | gnuplot  > $(basename $@).eps

%.txt:
	zenroom -l common.lua ${basename $@}.lua | tee $@
