# MarioKartAdvanceDecomp

A pret styled decompilation of Mario Kart Super Circuit for the GBA.

The current focuss is on understanding and documenting everything about the now defunct Mobile Adapter GB feature which allowed you to upload your time trail ghosts to online leaderboards & play in tournament styled GP's with your scores/times publised to online leaderboards.


## Building

Running make will generate a JPN version of Mario Kart Super Circuit (known as Mario Kart Advance in JPN). The JPN version is chosen to include all the Mobile Adapter GB functionalities.
To succesfully compile the rom, an original JPN ROM is needed in the root of the project with the exact name "base.gba". The build tools needed are included in DevKitARM. The agbcc compiler needs to be included seperatly too, place the agbcc compiler in the Tools folder and call the folder "agbcc". (A more clear how-to will be included in the near future)


## Info & Contributions

This project is used for me to learn and practice disassembly & decompilation projects on how they work and what actions are needed to be taken in different situations.
Contributions are definitely welcome as I'm really new to this and not fully sure yet how this whole disassembly/decompilation developement works. :-)
