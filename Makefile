
SOURCES=\
    src/introduction.md \
    src/cucumber-salad.md \
    src/bean-salad.md \
    src/carrot-soup.md \
    src/vegetable-soup.md \
    src/burrito-beans.md \
    src/chili.md \
    src/coconut-curry.md \
    src/rice-and-lentils.md \
    src/cajun-chickpea-and-salmon-cakes.md \
    src/risotto.md \
    src/paprika-chicken.md \
    src/carrot-pie.md \

PANDOC_OPTIONS=--self-contained --smart

all: cookbook.azw cookbook.epub cookbook.mobi cookbook.pdf ;

cookbook.% : $(SOURCES)
	pandoc $(PANDOC_OPTIONS) $^ -o $@

clean :
	rm -rf cookbook.*

rebuild : clean all

