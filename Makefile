
cookbook.pdf : $(wildcard src/*.md)
	pandoc $^ -o $@

clean :
	rm cookbook.pdf

rebuild : clean all

