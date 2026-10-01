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
1. Font hack by FlamePurge:
   Apply `SMT1_GBA_Font_Hack.ips` to the standard English GBA ROM or the completed PCE Content Expansion ROM. The same ordinary IPS works on both and does not validate the input checksum or resize the ROM. If using the expansion, apply its BPS first, then the optional font IPS. The standard English font-patched result has CRC32 **2050B471**; the PCE expansion with the optional font has CRC32 **6A4FDB1B**.
   This patch alters the following 16x8 (big dialogue font) letters to look more even:
   A B M W X
   a c k t

2. PCE Content Expansion by gymzatan:
   An optional expansion for the completed English GBA port, adding selected PC Engine CD demons, story events, special fusions, A-DDS entries, and in-game cinematics with their background music.
   [Download the PCE BPS](SMT1_PCE_Content_Expansion_EN.bps) and its separate [readme.txt](readme.txt) for installation, content details and fusion recipes. Apply the BPS to the unmodified English ROM generated above (16 MiB; CRC32 **F74DB49F**). The result is 32 MiB with CRC32 **3D144D36**. If also using the optional font adjustment, apply the PCE BPS first, then the font IPS.

The [latest release](https://github.com/gymzatan/SMT1-iOS-to-GBA/releases/latest) provides the two core translation BPS files, both optional patches, and the separate PCE readme as individual downloads.

Credits for the flips project https://github.com/Alcaro/Flips
