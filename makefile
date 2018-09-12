snake-path = ./target/scala-2.11/scala-native-snake-out

compile-and-run:
	sbt compile nativeLink && $(snake-path)

compile:
	sbt compile nativeLink

test:
	$(snake-path) --test

run:
	$(snake-path)

valgrind-massif:
	valgrind --tool=massif --massif-out-file=massif.out --time-unit=B $(snake-path) && ms_print massif.out > massif.out.printed
