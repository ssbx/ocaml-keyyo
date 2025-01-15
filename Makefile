
.PHONY: test
test:
	dune test

.PHONY: clean
clean:
	dune clean

.PHONY: watch
watch:
	dune runtest --watch || true

