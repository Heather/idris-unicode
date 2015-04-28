#!/bin/bash

die() {
	echo "$1" >&2
	exit 1
}

clean_up() {
	rm -f *.ibc test
}

clean_up

echo "compiling tests..."
idris Test.idr -p Control.Unicode -p contrib -o test || die "* could not compile test *"
idris rust-example.idr -p Control.Unicode -o rust || die "* could not compile test *"

echo "compiled OK, running tests..."
./test || die "* test failed or timed out *"
./rust || die "* test failed or timed out *"
