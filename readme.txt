Shin Megami Tensei: PCE Content Expansion (English)
================================================
By gymzatan

An English GBA modification that restores selected PC Engine CD content:
additional demons and event forms, their story events and special fusions,
A-DDS entries, and in-game cinematic scenes with their PCE background music.

BASE GAME
---------
This patch requires the English v1.3b GBA translation that ports ATLUS's
official iOS localization to GBA. It is based on the translation listed at:
https://www.romhacking.net/translations/6129/

Translation and project repository:
https://github.com/gymzatan/SMT1-iOS-to-GBA/

Required input: the unmodified English v1.3b GBA ROM
Example filename: Shin Megami Tensei (English v1.3b).gba
Size:   16,777,216 bytes (16 MiB)
CRC32:  F74DB49F
SHA256: 38f1d1ed5c070b6345f6b9e645d98ce6711fa36e6129836ab57c35a71a6d169f

Use this exact English base, without the optional font hack or other patches.
A filename alone does not identify a compatible ROM; check the checksum.

INSTALLATION
------------
1. Download the BPS patch and this readme.txt.
2. Open a BPS patcher, such as Floating IPS or a compatible ROM patcher.
3. Select "SMT1_PCE_Content_Expansion_EN.bps" and the required English ROM.
4. Save the result as a new .gba file, then open it in your GBA emulator.

Expected output:
Size:   33,554,432 bytes (32 MiB)
CRC32:  9218C4D1
SHA256: 1ca0c0b747e31685c9002d5756c7cc8ba53999cc21dbfa892df86e3eead771bc

If the patcher reports an input mismatch, check the base ROM. Do not force
the patch onto a different revision or an already modified ROM.

ADDED CONTENT
-------------
* Eight added demon records and event forms: Preacher (LV60), Amaterasu
  (LV60), Crusader (LV60), Dainichi (LV99), event Cerberus forms at LV20,
  LV25 and LV55, and Pascal's LV65 beast form. The original LV43 Cerberus
  remains available.
* Native battle abilities, skills, fusion, summoning, party status and game
  saving for the added allies. English party-name graphics are included.
* A-DDS entries with race/name, place of origin and a short summary on the
  first page, followed by paginated background descriptions.
* Pascal's Ichigaya rescue, initial fusion, terminal and Tokyo Destiny Land
  reunion events, with the relevant story flags and party-capacity checks.
  An unfused dog following the hero is an extra fusion candidate and does
  not occupy a COMP slot, including when all twelve COMP slots are filled.
* The Sugamo Prison three-demon ritual, using the native material-selection
  sequence and fusion animation.
* Five PCE in-game cinematics: Gotou's appearance, Tokyo's destruction,
  the Chaos Hero's transformation, the Great Flood, and the Messiah
  statue/Law Hero scene. They are
  adapted to the GBA screen and include the corresponding PCE background
  music. Normal game display and music resume after each scene.
* PCE terminal presentation, water-transport ripples, and the Demon Duck
  and Zombie Mouse portraits at Tokyo Destiny Land.

The Chaos Hero's transformation plays after his native demon fusion,
before his declaration of newfound power. Thor uses his original event
and battle sequence without this movie.

Events are integrated into the existing game locations. This modification
does not add new dungeon maps. PCE title, opening and staff-roll sequences
are outside its scope.

SPECIAL FUSIONS AND PASCAL
-------------------------
The following names are those used by the English base:

Scanner  + Ganesha = Preacher
Assassin + Lakshmi = Amaterasu
Assassin + Hanuman = Crusader

Bring Preacher, Amaterasu and Crusader to the fusion master in Sugamo
Prison. The special three-demon ritual consumes these three allies and
creates Dainichi. This ritual does not require the hero to be LV99.

Pascal's initial fusion produces LV20 Cerberus before the Ichigaya rescue,
or LV25 Cerberus after that rescue. The original Pascal fusion's exemption
from the hero-level check is preserved.

At the Tokyo Destiny Land reunion, a previously fused Pascal returns as
LV55 Cerberus; an unfused Pascal can join in the LV65 beast form. The
event's recognition, Golden Apple, acceptance and party-space conditions
still apply. A full COMP can prevent an actual ally from joining; the
unfused dog following the hero is handled separately as a fusion material.

SAVES AND TESTING
-----------------
Back up your normal game save before using it with the modified ROM. If
your emulator matches saves by filename, give the .gba and .sav files the
same basename. The title menu's CONTINUE reads the game's suspend record;
LOAD reads the ordinary save slots. Emulator savestates are separate from
these game saves and may depend on the precise ROM and emulator build.

The implementation has been checked in mGBA, including native fusion and
event completion, later movement and revisits, saving and reloading,
party names, A-DDS, and cinematic display/audio restoration. Applying this
BPS to the required base reproduces the delivered ROM byte for byte.

CREDITS
-------
ATLUS: original game and official English iOS localization.
gymzatan: iOS-to-GBA English script port and PCE Content Expansion.
Ds886: the translation repository's creation scripts.
Alcaro: Floating IPS / Flips.

The separate optional font hack is by FlamePurge. Apply
SMT1_GBA_Font_Hack.ips to either the standard English game or the completed
PCE expansion. The same ordinary IPS has no input checksum check and keeps
the ROM size unchanged. When using both additions, apply the PCE BPS first,
then the font IPS. The PCE expansion with this font has CRC32 C54352FC.
The font adjustment is optional.

This release distributes only a modification patch and documentation.
No game ROM, iOS application, save file or emulator is included.
