@echo off
setlocal

rem Set input directory as the current directory
set "input_dir=%cd%"

rem Create output directory as "output" subdirectory
set "output_dir=%cd%\output"
mkdir "%output_dir%" 2>nul

rem Loop through each file in the input directory
for %%F in ("%input_dir%\*") do (
    rem Process the file using ffmpeg
    ffmpeg -i "%%F" -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=2.0[a]" -map "[v]" -map "[a]" "%output_dir%\%%~nxF"
)

endlocal
@echo -------------------------------------
@echo -------------------------------------
@echo -------------------------------------
@echo -------------------------------------
@echo -------------------------------------
@echo ------------- D-O-N-E ---------------
@echo -------------------------------------
@echo -------------------------------------
@echo -------------------------------------
@echo -------------------------------------
@echo -------------------------------------
Pause