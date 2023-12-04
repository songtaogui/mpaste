seq 100 | while read a; do echo -e "$a\n$a" > $a.txt; done &&\
mpaste -d '\t' -t 1 --header 's/^/SMP/; s/\.txt//;' -v *.txt -o test.out
# rm -f *.txt