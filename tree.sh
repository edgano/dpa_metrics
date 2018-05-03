NAME=`echo "$1" | cut -d'.' -f1`
clustalo -i $1 --guidetree-out $NAME.CLUSTALO.dnd --force >/dev/null
