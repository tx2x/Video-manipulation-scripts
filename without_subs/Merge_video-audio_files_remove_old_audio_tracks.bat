@echo ===================================
@echo ===================================
@echo === File names must be the same ===
@echo ===================================
@echo ===================================
@echo off
setlocal enabledelayedexpansion

set /p video_extension="Enter video file extension (e.g. mkv): "
set /p audio_extension="Enter audio file extension (e.g. mka): "

set "source_folder=."  :: replace with the path of the folder containing the video and audio files
set "output_folder=muxed"
set "desired_audio_track=0"  :: replace with the index of the desired audio track (0-based index)

if not exist "%output_folder%" mkdir "%output_folder%"

for %%F in ("%source_folder%\*.%video_extension%") do (
    set "video_file=%%F"
    set "audio_file=%%~dpnF.%audio_extension%"
    set "output_file=%output_folder%\%%~nF.mkv"
    mkvmerge.exe -o "!output_file!" "--language" "0:und" "--default-track" "0:yes" "--audio-tracks" "%desired_audio_track%" "!video_file!" "!audio_file!"
)
