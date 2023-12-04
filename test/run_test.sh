num=2000 # set the number of files to paste
seq $num | while read a; do echo -e "$a\n$a" > $a.txt; done &&\
mpaste -d '\t' -t 1 --header 's/^/SMP/; s/\.txt//;' -v *.txt -o test.out
# rm -f *.txt
