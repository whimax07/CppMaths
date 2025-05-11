## Docs => https://makefiletutorial.com/

CXX = g++
# -g is debug.
CXXFLAGS = -g -std=c++23 



all: maths.o
	$(CXX) -o maths maths.o

maths.o: maths.cpp
	$(CXX) $(CXXFLAGS) -c maths.cpp -o maths.o



run: all
	./maths



clean:
	rm ./maths *.o
