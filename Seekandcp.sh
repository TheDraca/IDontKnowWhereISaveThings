#!/bin/bash
SearchLocation="/media/user/mountedHDD"
CopyLocation="/media/user/USBSTICK"
CopyLocation="${CopyLocation}/SEEKCP"

copy () {
  echo "Will $1 into $2"
  echo "Copying ${Folder}"
  mkdir ${CopyLocation}/${Folder} &>/dev/null
  find ${SearchLocation} -name "$ext" -exec cp {} ${CopyLocation}/${Folder}/ \;
}

declare -A CopyTypes=( ["*.doc*"]="Documents" ["*.ppt*"]="Powerpoints" ["*.xl*"]="Spreadsheets" ["*.pub"]="Publisher" ["*.mp3"]="Music" ["*.wma"]="Music" ["*.avi"]="Videos" ["*.mov"]="Videos" ["*.wmv"]="Videos" ["*.mkv"]="Vidoes" ["*.flv"]="Videos" ["*.mp4"]="Videos" ["*.png"]="Images" ["*.jpeg"]="Images" ["*.gif"]="Gifs" ["*.pdf"]="PDFs")

for ext in "${!CopyTypes[@]}"
do
  copy $ext ${CopyTypes[$ext]}
done
