# --- Makefilec ---

# 1. Definimos nuestras variables
CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99 -g
LDFLAGS = -lm -lSDL2

# 2. Acá ponemos los archivos .o (objetos) que vamos a compilar. 
# Por ahora arrancamos solo con main y modelo.
OBJS = main.o modelo.o

# 3. El nombre de nuestro programa final
PROGRAM = battlezone

# --- Reglas ---


all: $(PROGRAM)


$(PROGRAM): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(PROGRAM) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@


clean:
	rm -f *.o $(PROGRAM)