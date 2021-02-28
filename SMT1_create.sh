#!/bin/bash
echo "USAGE: SMT1_create.sh [GBA rom] [iOS rom]"
echo "Credits for the flips project https://github.com/Alcaro/Flips"
echo "Author: Dash"

if [[ -e $1 ]] && [[ -e $2 ]]
then
	echo "Patching File"
	./flips --apply "SMT1_1_gba.bps" "$1" "SMT1_1_gba.gba"
	./flips --apply "SMT1_2_ios.bps" "$2" "SMT1_2_ios.gba"
	cat SMT1_1_gba.gba SMT1_2_ios.gba > SMT1_new.gba
	rm SMT1_1_gba.gba SMT1_2_ios.gba
else
	echo "file not found"
fi

