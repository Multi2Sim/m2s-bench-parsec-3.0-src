CXX=g++ -m32

OBJS=\
	Thread.o \
	ThreadGroup.o \
	WorkerGroup.o \
	Mutex.o \
	Condition.o \
	Barrier.o \
	RWLock.o

MARCOS=-DHAVE_LIBPTHREAD

all:libthreads.a

libthreads.a: $(OBJS)
	ar rcs $@ $^

%.o: %.cpp
	$(CXX) -c $(MARCOS) -o $@ $<

clean:
	rm -f *.o *.a

