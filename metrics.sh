#! /bin/sh
NAME=`echo "$1" | cut -d'.' -f1`

echo "## GENERATION TREE\n KernelMode\tUserMode\tRSS"
/usr/bin/time -f "%S %U %M" -o $NAME.tree.txt ./tree.sh $1
cat $NAME.tree.txt

echo "\n## STD ALIGNMENT\n KernelMode\tUserMode\tRSS"
/usr/bin/time -f "%S %U %M" -o $NAME.std.txt ./std.sh $1 $NAME.CLUSTALO.dnd
cat $NAME.std.txt

echo "\n## DFT ALIGNMEN\n KernelMode\tUserMode\tRSS"
/usr/bin/time -f "%S %U %M" -o $NAME.dft.txt ./dft.sh $1
cat $NAME.dft.txt

echo "\n## DPA 1000\n KernelMode\tUserMode\tRSS"
/usr/bin/time -f "%S %U %M" -o $NAME.dpa1000.txt ./dpa1000.sh $1 $NAME.CLUSTALO.dnd
cat $NAME.dpa1000.txt


## MAN PAGE for /usr/bin/time 
##  http://man7.org/linux/man-pages/man1/time.1.html

## %S  		Total number of CPU-seconds that the process spent in kernel mode
## %U     	Total number of CPU-seconds that the process spent in user mode.
## %M  		Maximum resident set size of the process during its lifetime,in Kbytes.