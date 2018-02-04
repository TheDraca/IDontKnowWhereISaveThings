#!/bin/bash
SearchLocation="/media/user/mountedHDD"
CopyLocation="/media/user/USBSTICK/R"
CopyFolderName="/SEEKCP"
CopyLocation="${CopyLocation}${CopyFolderName}"

function copy {
#cp -r ${SearchLocation}/${ext} ${CopyLocation}/${Folder}
echo "Copying ${Folder}"
mkdir ${CopyLocation}/${Folder} &>/dev/null
find ${SearchLocation} -name "$ext" -exec cp {} ${CopyLocation}/${Folder}/ \;
}

#Docs#
ext=*.doc*
Folder=Docs
copy

#Powerpoint#
ext=*.ppt*
Folder=PowerPoint
copy

##Excel##
ext=*.xl*
Folder=Excel
copy

##Publisher##
ext=*.pub
Folder=Publisher
copy

#Music#
Folder=Music
ext=*.mp3
copy
ext=*.wma
copy

#Videos#
Folder=Videos
ext=*.avi
copy
ext=*.mov
copy
ext=*.wmv
copy
ext=*.mkv
copy
ext=*.flv
copy
ext=*.mp4
copy

##Images##
Folder=Images
ext=*.png
copy
ext=*.jpeg
copy
ext=*.gif
copy

##PDFs##
Folder=PDS
ext=*.pdf
copy

echo "Done!"
