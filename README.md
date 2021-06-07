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
4. Open the terminal and locate the above folder, then run the script "SMT1_create.bat" (credit to [Ds886](https://github.com/Ds886)) as:
   `SMT1_create.bat [GBA ROM filename] [iOS ROM filename]`

* For Unix/MacOS users:
4. Open the terminal and locate the above folder, then run the script "SMT1_create.sh" (credit to [Ds886](https://github.com/Ds886)) as:

   `SMT1_create.sh [GBA ROM filename] [iOS ROM filename]`

   The script calls the flips executable (by [Alcaro](https://github.com/Alcaro)) and directly generates the "SMT1_new.gba" ROM.

* Manually patching:
4. Patch your SMT1 GBA ROM with "SMT1_1_gba.bps" using a BPS patcher, such as Floating IPS, and save it as "SMT1_1_gba.gba"
5. Patch the "megaten1" file from the IPA with "SMT1_2_ios.bps" using the same BPS patcher, save it as "SMT1_2_ios.gba" (by default it will be saved as SMT1_2_ios.bps; please ensure to rename it correctly)
6. Combine the patched ROMs by the following command
   `copy /b SMT1_1_gba.gba+SMT1_2_ios.gba SMT1_new.gba`

Credits for the flips project https://github.com/Alcaro/Flips
