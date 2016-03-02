TARGET=fluidanimate

CXXFLAGS += -m32 -Wno-invalid-offsetof

ifdef version
all:
	$(MAKE) -f Makefile.${version} all

clean:
	$(MAKE) -f Makefile.${version} clean
	rm -f *.o	
else
all:
	$(MAKE) -f Makefile.pthreads all

clean:
	$(MAKE) -f Makefile.pthreads clean
	rm -f *.o	
endif
