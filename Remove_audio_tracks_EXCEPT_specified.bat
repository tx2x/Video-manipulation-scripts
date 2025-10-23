@echo off
set /p "tracks_to_remove=Remove all audio EXCEPT specified (comma separated): "

if not exist muxed mkdir muxed

for %%f in (*.mkv) do (
    mkvmerge.exe -o "muxed\%%~nf_new.mkv" --audio-tracks ^"%tracks_to_remove:^,=^;^%" "%%~nf.mkv"
)

echo All files processed.
pause
