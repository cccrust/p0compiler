set -x
./p0c $1.p0
./vm0 $1.ir0
./ir0c $1.ir0
clang -Wno-override-module -S $1.ll -o $1.s
clang -Wno-override-module $1.ll lib0.a -o $1
./$1
