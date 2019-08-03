kilo_serial: kilo_serial.c
	$(CC) kilo_serial.c -o kilo_serial -pthread -std=c99

kilo_parallel: kilo_parallel.c
	$(CC) kilo_parallel.c -o kilo_parallel -pthread -std=c99

test_serial : kilo_serial 
		${CURDIR}/kilo_serial test.c

test_parallel : kilo_parallel 
		${CURDIR}/kilo_parallel test.c