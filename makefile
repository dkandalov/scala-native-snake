compile-and-run:
	sbt compile nativeLink && ./target/scala-2.11/scala-native-snake-out

compile:
	sbt compile nativeLink

test:
	./target/scala-2.11/scala-native-snake-out --test

run:
	./target/scala-2.11/scala-native-snake-out

valgrind-massif:
	valgrind --tool=massif --massif-out-file=massif.out --time-unit=B ./target/scala-2.11/scala-native-snake-out && ms_print massif.out > massif.out.printed
