CXX=g++ -m32

HEADERS=\
    DMatrix.h \
    GeneralUtil.h \
    SmallVector.h \
    Vector3.h \
    system.h \
    AnnealingFactor.h \
    BodyGeometry.h \
    BodyPost.h \
    CameraModel.h \
    CovarianceMatrix.h \
    ImageMeasurements.h \
    ImageProjection.h \
    RandomGenerator.h \
    TrackingModel.h \
    ParticalFilterPthread.h \
    TrackingModelPthread.h \
    WorkPoolPthread.h \
    AsyncIO.h

OBJS=\
     AnnealingFactor.o \
     BodyGeometry.o \
     BodyPose.o \
     CameraModel.o \
     CovarianceMatrix.o \
     ImageMeasurements.o \
     ImageProjection.o \
     RandomGenerator.o \
     TrackingModel.o \
     TrackingModelPthread.o \
     AsyncIO.o \
     main.o

IFLAG=-I${CURDIR}/../FlexImageLib/

LIBTHREADS=-L${CURDIR}/threads -lthreads
LIBFLEX=-L${CURDIR}/../FlexImageLib -lflex

all: bodytrack

bodytrack: $(OBJS)
	$(CXX) $(IFLAG) -pthread -static -o $@ $^ $(LIBFLEX) $(LIBTHREADS)

%.o: %.cpp
	$(CXX) -c $(IFLAG) -pthread -o $@ $<

clean: 
	rm -f *.o bodytrack 
    
