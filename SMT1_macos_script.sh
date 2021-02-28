#!/bin/sh

echo "" 
echo "USAGE: SMT1_macos_script.sh [GBA ROM] [megaten1 (from the iOS iPA)]"
echo "Multipatch from https://projects.sappharad.com/tools/multipatch.html"
echo "Author: CyferNinja3006 (Cyfer#0027 on discord)"

if [[ -e $1 ]] && [[ -e $2 ]] ; then 

  echo ""  
  echo "Downloading Multipatch" 
  curl -O https://projects.sappharad.com/tools/multiPatch171_cmd.zip
  unzip multiPatch171_cmd.zip
  echo "MultiPatch downloaded successfully"

  echo ""
  echo "Applying the patches"
  ./cmdMultiPatch --apply "SMT1_1_gba.bps" "$1" "SMT1_1_gba.gba"
  ./cmdMultiPatch --apply "SMT1_2_ios.bps" "$2" "SMT1_2_ios.gba"
  echo "Patches applied successfully"

  echo ""
  echo "Concatenating the files"
  cat SMT1_1_gba.gba SMT1_2_ios.gba > SMT1_new.gba
  rm SMT1_1_gba.gba 
  rm SMT1_2_ios.gba
  echo "All done!"

  echo ""
  echo "Thank you to:"
  echo "Gymzatan for the SMT1 translation port"
  echo "Sappharad for MultiPatch"
  echo "Dash for the original Linux script"

else

  echo "Something went wrong"

fi