NAME=`echo "$1" | cut -d'.' -f1`

clustalo --infile=$1 \
         --outfmt=fa --force \
         -o $NAME.default.CLUSTALO.aln
