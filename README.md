# Proximity-Ligation-Assay-analysis

This repository contains simple Bash scripts and ImageJ macros, to anlyze cellular vs nuclear PLA-events in fluoreszent images

You can of course use the scripts to analyze other dotted stainings. 

In all scripts there is a comment before th lines that should be changed accordingly to your machine, the type and name of your input images etc.. 

General usage: 


Open FIJI / ImageJ, run "Analyse PLA".ijm (after adjusting for imagename and the expected size of nucleus / PLA-events inside the macro). 
The script will ask you to open a directory (can have with multiple images inside that should be analyzed). It will then create a subfolder for the analysis files of each image -> One folder per image (See screenshot-1). 

In order to retrieve a file containing just three lines of information that can be fed into statistical analysis software, run the "Bash-dataprocessing" script on your MacOS / Linux machine (you need to be able to run bash scripts to do so), while being in the same folder (see on screenshot-2 where th bash script is located). 

NOTE: In case your fluorescence images were saved in splitted color-channels (one channel per image), run the "MacroToMakeIMagesOne" macro before the procedure, or adjust the "Analyse-PLA" macro to retrieve multiple single-channel images as an input. 

Thats it, Enjoy =)
