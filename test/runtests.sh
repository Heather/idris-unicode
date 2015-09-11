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
idris Basics.idr -p Control.Unicode -p contrib -o base || die "* could not compile basics test *"
idris Test.idr -p Control.Unicode -p contrib -o test || die "* could not compile default test *"
idris rust-example.idr -p Control.Unicode -o rust || die "* could not compile rust example *"

echo "compiled OK, running tests..."
./base || die "* base test failed or timed out *"
./test || die "* default test failed or timed out *"
./rust || die "* rust example failed or timed out *"
