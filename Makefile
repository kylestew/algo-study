.PHONY: test
test: build
	build/tests/tests

.PHONY: format
format:
	clang-format src/* include/* -i

.PHONY: build
build:
	mkdir -p build
	cd build && \
	cmake .. && \
	make

.PHONY: debug
debug:
	mkdir -p build
	cd build && \
	cmake -DCMAKE_BUILD_TYPE=debug .. && \
	make

#.PHONY: grind
#grind: 
#	valgrind --leak-check=full \
#		--show-leak-kinds=all \
#		--track-origins=yes \
#		--verbose \
#		--log-file=valgrind-out.txt \
#		./build/monitor

.PHONY: clean
clean:
	rm -rf build

