clean:
	-rm -f notebooks/tables/*.ttf
	-rm -f notebooks/tables/*.ttx

clear-output:
	./clean-nb.sh notebooks/tables/*.ipynb

test: notebooks/tables/*.ipynb
	@for file in $^ ; do \
		jupyter nbconvert --to=html --ExecutePreprocessor.enabled=True --ExecutePreprocessor.timeout=120 --stdout $${file} ; \
    done


.PHONY: clean clear-output test