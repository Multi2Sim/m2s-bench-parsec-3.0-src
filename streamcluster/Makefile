# Makefile for streamcluster
TARGET=streamcluster
OBJS=streamcluster.o

CXXFLAGS := $(CXXFLAGS) -DENABLE_THREADS -pthread -m32 -static
OBJS += parsec_barrier.o

all: $(OBJS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(OBJS) $(LIBS) -o $(TARGET)

%.o : %.cpp
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -f *.o $(TARGET)

