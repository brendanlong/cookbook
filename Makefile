
SOURCES=\
    src/introduction.md \
    src/cucumber-salad.md \
    src/bean-salad.md \
    src/carrot-soup.md \
    src/vegetable-soup.md \
    src/chili.md \
    src/burrito-beans.md \
    src/cajun-chickpea-and-salmon-cakes.md \
    src/risotto.md \
    src/paprika-chicken.md \
    src/carrot-pie.md \

cookbook.pdf : $(SOURCES)
	pandoc $^ -o $@

clean :
	rm cookbook.pdf

rebuild : clean all

