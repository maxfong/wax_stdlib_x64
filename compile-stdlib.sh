#!/bin/zsh

# Compiles the wax stdlib into one file
lua "$(cd `dirname $0`; pwd)/luac.lua" wax wax.dat "$(cd `dirname $0`; pwd)/stdlib/" "$(cd `dirname $0`; pwd)/stdlib/init.lua" -L "$(cd `dirname $0`; pwd)/stdlib"/**/*.lua

# Dumps the compiled file into a byte array, then it places this into the source code
cat > "$(cd `dirname $0`; pwd)/wax_stdlib.h" <<EOF
// DO NOT MODIFY
// This is auto generated, it contains a compiled version of the wax stdlib
#define WAX_STDLIB {$(hexdump -v -e '1/1 "%d,"' wax.dat)}
EOF

# clean up
rm wax.dat