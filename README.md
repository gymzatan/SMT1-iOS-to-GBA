# SMT1-iOS-to-GBA
*Port of the officially localized SMT1 script from iOS to GBA*

### What you need:
1. A GBA ROM of Shin Megami Tensei 1 (Japanese version), e.g., "Shin Megami Tensei (Japan).gba" (CRC32: B857C3C5)
2. An iOS ROM of Shin Megami Tensei 1 (English version), e.g., "Shin Megami Tensei (ENG) v1.0.0.ipa"
3. A BPS patch tool, e.g., Floating IPS

### How to apply the patch:
1. Open the iOS IPA file using a file compression software, such as 7-Zip
2. Inside, open the folder "Payload" then the folder "megaten1.app"
3. Extract the "megaten1" file (no file extension; CRC32: A3AAC34F) from this folder, place it in the same folder as the gba ROM

* For Windows users:
4. Patch your SMT1 GBA ROM with "SMT1_1_gba.bps" using a BPS patcher, such as Floating IPS, and save it as "SMT1_1_gba.gba"
5. Patch the "megaten1" file from the IPA with "SMT1_2_ios.bps" using the same BPS patcher, save it as "SMT1_2_ios.gba" (by default it will be saved as SMT1_2_ios.bps; please ensure to rename it correctly)
6. The next step is to concatenate the two *.gba* ROMs. Place your patched GBA files in the same folder as the "SMT1_create.bat" batch script, then run the batch script
7. When it's done it will create the "SMT1_new.gba" ROM, which is now ready for playing

* For Linux users:
4. Open the terminal and locate the above folder, then run the script "SMT1_create.sh" (credit to [Ds886](https://github.com/Ds886)) as:

   `SMT1_create.sh [GBA ROM filename] [iOS ROM filename]`
  
   The script calls the flips executable (by [Alcaro](https://github.com/Alcaro)) and directly generates the "SMT1_new.gba" ROM.
  
* For MacOS users:
4. Open terminal, make sure the `SMT1_1_gba.bps`, `SMT1_2_ios.bps`, `SMT1_macos_script.sh`, megaten1 file from the iOS iPA, and the SMT1 GBA JP ROM are all in the same folder.
5. Type `cd ` (but do not hit enter) then drag and drop the folder with all the related files and hit enter.
6. Type `sh SMT1_macos_script.sh [Name of GBA ROM] [megaten1 file]`
7. If all goes correctly, the "SMT1_new.gba" file should be generated and should be around 16mb in size

   Thank you to Sappharad for [MultiPatch](https://github.com/Sappharad/MultiPatch)

Credits for the flips project https://github.com/Alcaro/Flips
