CC = gcc
OBJECTS = s21_grep.o
SOURSES = s21_grep.c
CFLAGS = -Werror -Wextra -Wall -std=c11


all: clean s21_grep test

s21_grep:
	$(CC) $(CFLAGS) -c $(SOURSES) -o $(OBJECTS)
	$(CC) $(OBJECTS) -o s21_grep
test: s21_grep
	./grep.sh
# check: s21_grep
# 	@cppcheck *.h *.c
# 	@cp ../../materials/linters/CPPLINT.cfg ./
# 	@python3 ../../materials/linters/cpplint.py --extension=c *.c *.h
# 	@valgrind --leak-check=full ./s21_grep -v tests/test.txt
# 	@rm CPPLINT.cfg
clean:
	rm -rf ./*.o ./a.out ./CPPLINT* s21_grep *.dSYM
rebuild:
	$(MAKE) clean
	$(MAKE) all