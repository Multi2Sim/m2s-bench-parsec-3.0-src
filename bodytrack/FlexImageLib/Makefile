CXX=g++ -m32

HEADERS=\
	BinaryImage.h \
	FlexColor.h \
	FlexDataExchange.h \
	FlexDefs.h \
	FlexDraw.h \
	FlexFilter.h \
	FlexImage.h \
	FlexImageStatus.h \
	FlexImageStore.h \
	FlexIO.h \
	FlexLib.h \
	FlexOperators.h \
	FlexThreshold.h \
	FlexTransform.h

OBJ=\
	FlexImage.o \
	FlexIO.o

all: libflex.a

libflex.a: $(OBJ)
	ar rcs $@ $^

%.o: %.cpp $(HEADERS)
	$(CXX) -c -o $@ $<

clean:
	rm -f *.h.gch *.a *.o
	
	
