BINARY		:= facesim

ifdef version
	ifeq "$(version)" "pthreads"
		CXXFLAGS+=-DENABLE_PTHREADS	
	endif

	ifeq "$(version)" "serial"
		CXXFLAGS+=-DNEW_SERIAL_IMPLEMENTATIOM	
	endif
endif

all:
	$(MAKE) -C ${CURDIR}/TaskQ/lib all
	$(MAKE) -C ${CURDIR}/facesim
	mv ${CURDIR}/facesim/facesim ${CURDIR}/facesim_exe

clean:
	$(MAKE) -C ${CURDIR}/facesim clean
	$(MAKE) -C ${CURDIR}/Public_Library clean
	$(MAKE) -C ${CURDIR}/TaskQ/lib clean

