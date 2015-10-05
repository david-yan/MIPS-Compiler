make

./assembler input/combined.s out/combined.int out/combined.out 


./assembler input/comments.s out/comments.int out/comments.out 


./assembler input/imm.s out/imm.int out/imm.out 

./assembler input/jumps.s out/jumps.int out/jumps.out 

./assembler input/labels.s out/lables.int out/labels.out 

./assembler -p1 input/p1_errors.s out/p1_errors.int -log log/p1_errors.txt

./assembler input/p2_errors.s out/p2_errors.int out/p2_errors.out -log log/p2_errors.txt

./assembler input/pseudo.s out/pseudo.int out/pseudo.out

./assembler input/rtypes.s out/rtypes.int out/rtypes.out

./assembler input/simple.s out/simple.int out/simple.out

echo ERRORS PRINTED BELOW
    
echo ------combined-------                   
diff out/combined.out out/ref/combined_ref.out
echo ------end of test------
echo ------comments------
diff out/comments.out out/ref/comments_ref.out
echo ------end of test------
echo ------imm------
diff out/imm.out out/ref/imm_ref.out
echo ------end of test------
echo ------jumps------
diff out/jumps.out out/ref/jumps_ref.out
echo ------end of test------
echo ------labels ------
diff out/labels.out out/ref/labels_ref.out
echo ------end of test------
echo ------p1_errors------

diff log/p1_errors.txt log/ref/p1_errors_ref.txt
echo ------end of test------

echo ------p2_errors------
diff log/p2_errors.txt log/ref/p2_errors_ref.txt
echo ------ end of test------

echo ------pseudo------
diff out/pseudo.out out/ref/pseudo_ref.out

echo ------end of test------
echo ------rtypes------
diff out/rtypes.out out/ref/rtypes_ref.out
echo ------end of test------

echo ------simple------
diff out/simple.out out/ref/simple_ref.out
echo ------end of test------

echo empty means no errors
