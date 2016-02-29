all:
	$(MAKE) -C ${CURDIR}/FlexImageLib all
	$(MAKE) -C ${CURDIR}/TrackingBenchmark/threads all
	$(MAKE) -C ${CURDIR}/TrackingBenchmark all
	mv ${CURDIR}/TrackingBenchmark/bodytrack .

clean:
	$(MAKE) -C ${CURDIR}/FlexImageLib clean
	$(MAKE) -C ${CURDIR}/TrackingBenchmark/threads clean
	$(MAKE) -C ${CURDIR}/TrackingBenchmark clean
	rm bodytrack
