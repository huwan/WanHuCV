
PDFC = xelatex
READER = evince

FILE = cv.cn
#FILE = cv.en

TARGET = $(FILE).pdf
OUTGROWTH = *.out *.log *.aux *.lof *.lot *.bbl *.blg *.thm *.toc *.out *.xdv *.exa
SOURCE =  $(FILE).tex

$(TARGET): $(SOURCE)
	$(PDFC)	-no-pdf $(SOURCE)
	$(PDFC)	$(SOURCE)

read:
	$(READER) $(TARGET)

clean:
	-rm -f $(OUTGROWTH)

cleanall:
	-rm -f $(OUTGROWTH) $(TARGET)

.PHONY:read clean cleanall
