make

./assembler ALANTESTS/testall.s out/testall.int out/testall.out

./assembler ALANTESTS/testnegs.s out/testnegs.int out/testnegs.out

./assembler ALANTESTS/testmem.s out/testmem.int out/testmem.out

echo ------testall pass 1-----
diff out/testall.int ALANTESTS/testall_ref.int
echo ------end of test------

echo ------testall pass 2-----
diff out/testall.out ALANTESTS/testall_ref.out
echo ------end of test------

echo ------testmem pass 1-----
diff out/testmem.int ALANTESTS/testmem_ref.int
echo ------end of test------

echo ------testmem pass 2-----
diff out/testmem.out ALANTESTS/testmem_ref.out
echo ------end of test------

echo ------testnegs pass 1-----
diff out/testnegs.int ALANTESTS/testnegs_ref.int
echo ------end of test------

echo ------testnegs pass 2-----
diff out/testnegs.out ALANTESTS/testnegs_ref.out
echo ------end of test------
