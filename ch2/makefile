OBJS = movexamps.o
ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif

%.o : %.s
	as $(DEBUGFLGS) $< -o $@

movexamps: $(OBJS)
	ld -o movexamps $(OBJS)
