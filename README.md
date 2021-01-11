# minecraft-autofish
(Minecraft) automatically reels in and re-casts a fishing rod when there's a bite

## How It Works
The only time the word "Fishing" or "Fi" appears in the in-game subtitles to my knowledge (at least while fishing) is when the "Fishing bobber splashes" once something is on the line and the bobber goes under. To use this, the program searches for an image of "Fi" on the screen and when found, sends two right-clicks with some delay to reel in and re-cast accordingly. "Fi" is smaller than the whole word (easier to find in terms of being recognized on the screen and being in other words) so it decreases the false negatives while increasing the false positives - I deemed not missing a reel-in more important so that is ok.

#### Files
The .ahk requires AutoHotKey to be installed to run it and needs the .bmp in the same directory. The .exe is a standalone executable compiled from the two others that acts identically.
