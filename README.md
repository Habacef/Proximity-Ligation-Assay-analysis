# Proximity-Ligation-Assay-analysis

This repository contains simple Bash scripts and ImageJ macros, to analyze cellular vs nuclear PLA-events in fluoreszent images

You can of course use the scripts to analyze other dotted stainings. 

In all scripts there is a comment before th lines that should be changed accordingly to your machine, the type and name of your input images etc.. 

General usage: 


Open FIJI / ImageJ, run "Analyse PLA".ijm (after adjusting for image name and the expected size of nucleus / PLA-events inside the macro). 
The script will ask you to open a directory (comprising one or multiple images to analyze). It will then create a subfolder for the analysis files of each image -> One folder per image (See screenshot-1). 

![Analysis-results](https://github.com/Habacef/Proximity-Ligation-Assay-analysis/blob/main/After-Analysis.png?raw=true)

In order to retrieve a file containing just three lines of information that can be fed into statistical analysis software, run the "Bash-dataprocessing" script on your MacOS / Linux machine (you need to be able to run bash scripts to do so), while being in the same folder (see on screenshot-2 where th bash script is located). It will create a file with all data for each image in the subfolders (Result.txt). And a file for all folders together (e.g. use the folder architecture to specifiy all images of one biological condition and replication / ...)

![Processing-results](https://github.com/Habacef/Proximity-Ligation-Assay-analysis/blob/main/After-data-processing.png?raw=true)

NOTE: In case your fluorescence images were saved in splitted color-channels (one channel per image), run the "MacroToMakeIMagesOne" macro before the procedure, or adjust the "Analyse-PLA" macro to retrieve multiple single-channel images as an input. 

Thats it, Enjoy =)
