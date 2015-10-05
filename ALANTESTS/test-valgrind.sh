make assembler

chmod u+x ./assembler

chmod u+x ./run-valgrind

./run-valgrind ./assembler input/combined.s out/combined.int out/combined.out 
./run-valgrind ./assembler input/comments.s out/comments.int out/comments.out 
./run-valgrind ./assembler input/imm.s out/imm.int out/imm.out 
./run-valgrind ./assembler input/jumps.s out/jumps.int out/jumps.out 
./run-valgrind ./assembler input/labels.s out/labels.int out/labels.out 
./run-valgrind ./assembler input/p1_errors.s out/p1_errors.int out/p1_errors.out
./run-valgrind ./assembler input/p2_errors.s out/p2_errors.int out/p2_errors.out
./run-valgrind ./assembler input/pseudo.s out/pseudo.int out/pseudo.out
./run-valgrind ./assembler input/rtypes.s out/rtypes.int out/rtypes.out
./run-valgrind ./assembler input/simple.s out/simple.int out/simple.out

