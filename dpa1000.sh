NAME=`echo "$1" | cut -d'.' -f1`
TREE=`echo "$2" | cut -d'.' -f2`
t_coffee -dpa -dpa_method clustalo_msa \
         -dpa_tree $2 \
         -seq $1 \
         -dpa_nseq 1000 \
         -outfile $NAME.dpa_1000.CLUSTALO.with.$TREE.tree.aln 2> /dev/null
