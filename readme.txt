Shin Megami Tensei: PCE Content Expansion (English)
================================================
By gymzatan

Optional additions to the official English iOS script port for GBA.
Choose ONE of the two PCE editions below. Both contain the same additional
demons, story events, special fusions, A-DDS entries and Dog Collar fix.

BASE GAME
---------
Requires the unmodified English v1.3b GBA translation, using ATLUS's official
iOS localization. Translation listing and project:
https://www.romhacking.net/translations/6129/
https://github.com/gymzatan/SMT1-iOS-to-GBA/

Example input: Shin Megami Tensei (English v1.3b).gba
Size:   16,777,216 bytes (16 MiB)
CRC32:  F74DB49F
SHA256: 38f1d1ed5c070b6345f6b9e645d98ce6711fa36e6129836ab57c35a71a6d169f

Create this English base using the two core translation BPS files and the
separate repository README. If you already have this exact English ROM,
you can apply either optional PCE patch directly.

INSTALLATION - CHOOSE ONE PCE EDITION
-----------------------------------
1. Select one of these BPS files in a compatible BPS patcher:

   SMT1_PCE_Content_Expansion_EN.bps
   Full PCE presentation, with five added in-game cinematics/music,
   terminal animation and water-transport ripples.
   Output: 32 MiB; CRC32 EFA26E19
   SHA256: 82519afeec44bc7a64e4a6e98b82d759599777ce15f1584dd7017e3d6777511c

   SMT1_PCE_Content_Expansion_No_Cutscenes_EN.bps
   No added PCE movie player, sampled movie music, terminal animation or
   water-ripple presentation. Retains the additional demons, events,
   fusions, A-DDS, and Demon Duck/Zombie Mouse portraits/dialogue.
   Uses the original GBA story sequences and fusion animations.
   Output: 16 MiB; CRC32 D0056DDC
   SHA256: 7d06607234e06e9d179cc4af821576dcdaf3a3e24477e9d7531336955ce3e0cc

2. Apply your chosen BPS to the SAME unmodified English base listed above.
   Save the result as a new .gba file. Do not apply both PCE BPS files,
   or apply either BPS to an existing PCE edition.
3. If desired, apply SMT1_GBA_Font_Hack.ips LAST.

The PCE BPS files validate the input. If there is a checksum error, check
the base ROM instead of forcing a patch. The optional font IPS does not
validate an input checksum and preserves the ROM size.

Font-patched CRC32 values:
  Standard English: 2050B471
  PCE cinematic edition: B8F9F834
  PCE no-cutscene edition: 07186D32

The no-cutscene edition is offered for reports of the added PCE movies
freezing My Boy! and JohnGBA. It removes the added movie implementation;
compatibility on those Android apps still needs device-side confirmation.
Both editions have been checked with the mGBA core.

COMMON ADDED CONTENT
--------------------
* Eight added demon records: Preacher (LV60), Amaterasu (LV60), Crusader
  (LV60), Dainichi (LV99), Cerberus at LV20/LV25/LV55, and Pascal at LV65.
  The original LV43 Cerberus remains available.
* Native abilities, skills, battle, summoning, status, saving and English
  party-name graphics, with native sprite alignment in fusion/status views.
* A-DDS entries: race/name, place of origin and a short summary on page one,
  followed by background descriptions.
* Pascal's Ichigaya rescue, initial fusion, terminal and Tokyo Destiny Land
  reunion, including native story, level and party-capacity conditions.
  The unfused following dog is an extra fusion candidate with a full COMP.
* Sugamo Prison's native three-demon selection and fusion ritual.
* Demon Duck and Zombie Mouse portraits/dialogue with the original luck games.
* Dog Collar eligibility for LV65 Pascal in the COMP without marking him fused.

PCE CINEMATIC EDITION
--------------------
Five added sequences: Gotou's first meeting, Tokyo's destruction, the Chaos
Hero's transformation, the Great Flood, and the Messiah statue/Law Hero.
They include their corresponding PCE music. Tokyo's destruction follows
the original GBA nuclear short sequence and precedes the heroine's farewell
and teleportation. Chaos transformation follows native fusion and precedes
the declaration of power. The flood follows the original effect and
precedes the disaster report. First-event guards prevent movie replays.
Thor retains his original event and battle. The no-cutscene edition uses
the original GBA presentation throughout these events.

Events use existing game locations; no new dungeon maps are added.
PCE title, opening and staff-roll sequences are outside the expansion.

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
still apply. The Golden Apple is checked, not consumed. Declining or a
full COMP preserves the waiting state for a later return, without repeating
the recovery dialogue. Owning the exact late form completes the reunion
without adding a duplicate; earlier Cerberus forms can coexist with it.
The Dog Collar visionary item accepts either the original Pascal-fusion
history or LV65 Pascal currently in the COMP. This does not mark Pascal
as fused. The original Echidna reward event and duplicate guard still apply;
an already completed event is not replayed or retroactively changed.

A full COMP can prevent an actual ally from joining; the
unfused dog following the hero is handled separately as a fusion material.

SAVES AND TESTING
-----------------
Normal game-save formats are shared between the two editions. Copy the
matching-language SAV beside your chosen ROM with the same basename, and
keep your original copy. Emulator savestates depend on the edition/build;
use edition-specific checkpoints instead of exchanging emulator states.
CONTINUE reads the native suspend record; LOAD reads ordinary save slots.

Both BPS files reproduce their target ROMs byte for byte. The Dog Collar
fix was checked through the original Echidna encounter and later visits.
The no-cutscene edition passed 33 real-location event cases per language,
including completion, movement, menus, revisit and reload, and native
ordinary-save reading. Its PCE movie player and movie/audio payloads are
absent. Shared demon/event code and data match the cinematic edition.
These checks do not constitute a complete playthrough of every route.

CREDITS
-------
ATLUS: original game and official English iOS localization.
gymzatan: iOS-to-GBA English script port and PCE Content Expansion.
FlamePurge: optional dialogue-font adjustment.
Ds886: translation repository creation scripts.
Alcaro: Floating IPS / Flips.

Only modification patches and documentation are distributed here.
