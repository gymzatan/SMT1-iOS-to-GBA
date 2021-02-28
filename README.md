# SMT1-iOS-to-GBA
*Port of the officially localized SMT1 script for the GBA version*

### What you need:
1. A GBA rom of Shin Megami Tensei 1 (Japanese version), e.g., "Shin Megami Tensei (Japan).gba" (CRC32: B857C3C5)
2. An iOS rom of Shin Megami Tensei 1 (English version), e.g., "Shin Megami Tensei (ENG) v1.0.0.ipa"
3. A BPS patch tool, e.g., Floating IPS

### How to apply the patch:
1. Open the iOS IPA file using a file compression software, such as 7-Zip
2. Inside, open the folder "Payload" then the folder "megaten1.app"
3. Extract the "megaten1" file (no file extension; CRC32: A3AAC34F) from this folder, place it anywhere
4. Patch your SMT1 GBA rom with "SMT1_1_gba.bps" using a BPS patcher, such as Floating IPS, and save it as "SMT1_1_gba.gba"
5. Patch the "megaten1" file from the IPA with "SMT1_2_ios.bps" using the same BPS patcher, save it as "SMT1_2_ios.gba" (by default it will be saved as SMT1_2_ios.bps; please ensure to rename it correctly)
6. The next step is to concatenate the two *.gba* roms:
* For Windows users, place your patched GBA files in the same folder as the "SMT1_create.bat" batch script, then run the batch script
* For Unix/MacOS users, use the "SMT_create.sh" script
7. When it's done it will create the "SMT1_new.gba" ROM, which is now ready for playing
