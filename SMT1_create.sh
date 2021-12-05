#!/bin/sh
echo "==================================================================="
echo "USAGE: SMT1_create.sh [GBA rom] [iOS rom]"
echo "Credits for the flips project https://github.com/Alcaro/Flips"
echo "Author: Dash"
echo "==================================================================="
echo ""

if [ -e "$1" ] && [ -e "$2" ]
then
	OS=$(uname)
	CURRCOMMIT=$(git rev-parse --short HEAD)
	CURRBRANCH=$(git branch | awk '/\*/ { print $2; }')
	if [ "$CURRBRANCH" = "main" ]
	then
		VERSION="git-$CURRBRANCH-$CURRCOMMIT"
	else
		VERSION="$CURRBRANCH"
	fi

	if [ "$OS" = "Linux" ]
	then
		echo ""
		echo  "Detected $OS - Setting patcher to flips"
		patcher='./bin/flips'
		echo "Making sure flips is executable"
		chmod +x './bin/flips'
	elif [ "$OS" = "Darwin" ]
	then
		echo ""
		echo "Detected $OS - Setting patcher to multiPatch"
		patcher='./bin/cmdMultiPatch'

		if [ ! -e $patcher ]
		then
			echo 'Downloading multiPatch'
			downloadedZip='./bin/multiPatch.zip'
			curl -L 'https://github.com/Sappharad/MultiPatch/releases/download/2.0/multipatch20_cmd.zip' -o $downloadedZip

			echo "Decompressing multiPatch"
			unzip   $downloadedZip  -d "bin/"
			echo 'MultiPatch downloaded successfully'

			echo "Making sure cmdMultiPatch executable"
			rm  $downloadedZip
		fi


	else
		echo "Detected $OS - Not a valid OS"
	fi

	echo ""
	echo "==================================================================="
	echo ""
	echo "Deleting old patches"
	if [ -e "SMT1_1_gba.gba" ]
	then
		rm "SMT1_1_gba.gba"
	elif [ -e "SMT1_2_ios.gba" ]
	then
		rm "SMT1_2_ios.gba"
	fi


	echo "Patching File"
	$patcher --apply "SMT1_1_gba.bps" "$1" "SMT1_1_gba.gba"
	$patcher --apply "SMT1_2_ios.bps" "$2" "SMT1_2_ios.gba"
	echo ""
	echo "Combining files"
	cat SMT1_1_gba.gba SMT1_2_ios.gba > "SMT1-$VERSION.gba"
	echo "Cleaning files"
	rm SMT1_1_gba.gba SMT1_2_ios.gba
else
	echo "file not found"
fi

