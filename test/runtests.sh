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
idris Test.idr -p Control.Unicode -o test || die "* could not compile tests *"

echo "compiled OK, running tests..."
./test || die "* test failed or timed out *"
