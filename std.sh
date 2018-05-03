NAME=`echo "$1" | cut -d'.' -f1`
TREE=`echo "$2" | cut -d'.' -f2`
clustalo --infile=$1 \
         --guidetree-in=$2 \
         --outfmt=fa --force \
         -o $NAME.std.CLUSTALO.with.$TREE.tree.aln
