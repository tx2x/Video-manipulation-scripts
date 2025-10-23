# Video Manipulation Batch Scripts

A collection of batch scripts for automating video file processing using FFmpeg and MKVToolNix.

## 📋 Requirements

Before using, install and add to PATH:
- **FFmpeg** - for video conversion
- **MKVToolNix** - for working with Matroska files

## 🛠 Scripts

### 🔄 Multiplexing
- **Merge_video-audio_files_make_added_audio_default_audio_track.bat**  
  Merges video and audio, making the added track the default audio track

- **Merge_video-audio_files_remove_old_audio_tracks.bat**  
  Merges video and audio while removing old audio tracks

- **Merge_video-sub_files.bat**  
  Adds subtitles to video files

### ⚡ Conversion
- **ffmpeg_convert_video_to_2x_speed.bat**  
  Speeds up video 2x (both video and audio)

### 🎵 Track Management
- **Remove_audio_tracks_EXCEPT_specified.bat**  
  Removes all audio tracks except specified ones

## 💡 Features
- Automatic processing of all files in folder
- Creates separate `muxed` folder for results
- Supports various formats (mkv, mka, srt, etc.)
- Interactive parameter input

## 🚀 Usage
1. Place scripts in folder with media files
2. Run the desired .bat file
3. Follow console instructions

---
*For scripts to work, ensure filenames match (except for extensions)*