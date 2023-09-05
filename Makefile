
all: lander test auto

test: lander.cpp
	g++ lander.cpp -Wall -o test -lX11 -lGL -lGLU -lm -D TESTING

lander: lander.cpp
	g++ lander.cpp -Wall -o lander -lX11 -lGL -lGLU -lm

auto: lander.cpp
	g++ lander.cpp -Wall -o auto -lX11 -lGL -lGLU -lm -D AUTO

clean:
	rm -f lander test

