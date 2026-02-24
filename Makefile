OUT_DIR:=output
GENERATED_PDF := $(OUT_DIR)/ohcv.pdf

all: $(GENERATED_PDF)

$(GENERATED_PDF): ohcv.tex sections/*.tex
	latexmk -pdf -jobname=$(GENERATED_PDF) -silent -shell-escape ohcv.tex

clean:
	rm -f $(GENERATED_PDF) *.aux *.log *.out *.toc *.fls *.fdb_latexmk

.PHONY: all clean

$(OUT_DIR):
	-$(MKDIR) $@
