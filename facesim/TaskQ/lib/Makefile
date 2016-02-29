all: taskQ.o

taskQ.o: 
	$(CXX) -m32 $(CXXFLAGS) -DTASKQ_DIST_FIXED -c taskQDistCommon.c
	mv taskQDistCommon.o taskQ.o

clean:
	rm taskQ.o
