compile-and-run:
	sbt compile nativeLink && ./target/scala-2.11/scala-native-snake-out

compile:
	sbt compile nativeLink

test:
	./target/scala-2.11/scala-native-snake-out --test

run:
	./target/scala-2.11/scala-native-snake-out