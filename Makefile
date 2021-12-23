# Makefile for lab1, Michelle Ly, CS32, F19

CXX=clang++
# CXX=g++

helloWorld: helloWorld.o
	${CXX} helloWorld.o -o helloWorld

helloWorld.o: helloWorld.cpp
	${CXX} -c helloWorld.cpp

lab1Test: lab1Test.o tddFuncs.o arrayFuncs.o
	${CXX} lab1Test.o tddFuncs.o arrayFuncs.o -o lab1Test

clean: 
	rm -f *.o helloWorld lab1Test