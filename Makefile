SUBDIRS = \
	blackscholes \
	bodytrack \
	facesim 

BINARIES = \
	blackscholes/blackscholes \
	bodytrack/bodytrack \
	facesim/facesim_exe

DATA_FILES = \
	blackscholes/data-medium \
	blackscholes/data-small \
	bodytrack/data-medium \
	bodytrack/data-small \
	facesim/data-medium \
	facesim/data-small \

EXTRA_DIST = \
	blackscholes/benchmark.ini \
	blackscholes/COPYRIGHT \
	blackscholes/README \
	bodytrack/benchmark.ini \
	facesim/benchmark.ini \
	facesim/LICENSE \
	facesim/COPYRIGHT \
	facesim/README
	


BENCHMARK_SUITE = m2s-bench-parsec-3.0

all:
	for subdir in $(SUBDIRS); do \
		$(MAKE) -C $$subdir all; \
	done

clean:
	for subdir in $(SUBDIRS); do \
		$(MAKE) -C $$subdir clean; \
	done
	rm *.tar.gz

dist: all $(BENCHMARK_SUITE).tar.gz

$(BENCHMARK_SUITE).tar.gz: $(BINARIES)
	rm -f $(BENCHMARK_SUITE).tar.gz
	tar -czvf $(BENCHMARK_SUITE).tar.gz \
		--transform='s,^,$(BENCHMARK_SUITE)/,' \
		$(BINARIES) $(DATA_FILES) $(EXTRA_DIST) \
		LICENSE CONTRIBUTORS
