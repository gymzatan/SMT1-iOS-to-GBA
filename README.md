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
4. Open cmd (Command Prompt) and locate the above folder, then run the script "SMT1_create.bat" (credit to [Ds886](https://github.com/Ds886)) as:

   `SMT1_create.bat [GBA ROM filename] megaten1`

* For Unix/MacOS users:
4. Open the terminal and locate the above folder, then run the script "SMT1_create.sh" (credit to [Ds886](https://github.com/Ds886)) as:

   `SMT1_create.sh [GBA ROM filename] megaten1`

   The script calls the flips executable (by [Alcaro](https://github.com/Alcaro)) and directly generates the "SMT1_new.gba" ROM.

* Manually patching:
4. Patch your SMT1 GBA ROM with "SMT1_1_gba.bps" using a BPS patcher, such as Floating IPS, and save it as "SMT1_1_gba.gba"
5. Patch the "megaten1" file from the IPA with "SMT1_2_ios.bps" using the same BPS patcher, save it as "SMT1_2_ios.gba" (by default it will be saved as SMT1_2_ios.bps; please ensure to rename it correctly)
6. Combine the patched ROMs by the following command
   `copy /b SMT1_1_gba.gba+SMT1_2_ios.gba SMT1_new.gba`
   
### Optional patches

The core project is the English iOS-to-GBA script port. The following additions are optional.

1. Font hack by FlamePurge:
   Apply `SMT1_GBA_Font_Hack.ips` to the standard English ROM or either completed PCE edition. This ordinary IPS has no input checksum check and preserves ROM size. Apply a chosen PCE BPS first, then the font IPS. It adjusts these 16x8 dialogue-font letters: A B M W X / a c k t. CRC32 with this font: standard English **2050B471**, PCE cinematic **B8F9F834**, PCE no-cutscene **07186D32**.

2. PCE Content Expansion by gymzatan:
   Additional demons, events, special fusions, A-DDS entries and the Dog Collar fix for LV65 Pascal. Choose **one** edition:

   | Edition | Patch | Output size | Output CRC32 |
   | --- | --- | --- | --- |
   | With PCE in-game cinematics and music | [Cinematic BPS](SMT1_PCE_Content_Expansion_EN.bps) | 32 MiB | EFA26E19 |
   | Without added PCE cinematics/music | [No-cutscene BPS](SMT1_PCE_Content_Expansion_No_Cutscenes_EN.bps) | 16 MiB | D0056DDC |

   Both patches require the **same unmodified English ROM** produced by the core port above (16 MiB; CRC32 **F74DB49F**). Apply one PCE BPS directly to that base; the editions are alternatives, not cumulative patches. Apply the optional font IPS last. Detailed instructions, content and fusion recipes are in the separate [PCE readme.txt](readme.txt).

   The no-cutscene edition retains native GBA story/fusion animations and the added demon/events content. It is offered for reports of PCE movie freezes in My Boy! and JohnGBA; device-side compatibility remains to be confirmed. Both editions have been checked in mGBA.

The [latest release](https://github.com/gymzatan/SMT1-iOS-to-GBA/releases/latest) provides both core translation BPS files, the two alternative PCE BPS files, the optional font IPS and the separate PCE readme as individual downloads.

Credits for the flips project https://github.com/Alcaro/Flips
