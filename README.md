# C64 SD2IEC NTSC Starter Card

A clean, NTSC-focused starter card builder for Commodore 64 SD2IEC devices.

This project creates a short-name, SD2IEC-friendly directory layout, downloads selected free/publicly available NTSC-friendly C64 content from original sources, places all CBM FileBrowser `FB*` variants at the card root, and makes `FB` the first root entry so many users can start the browser with:

```basic
LOAD"*",8
RUN
```

You can also load FileBrowser directly:

```basic
LOAD"FB",8
RUN
```

## What this project is

This is a starter/downloader package for NTSC C64 users with SD2IEC hardware such as BitsRetro, TheFutureWas8Bit SD2IEC, uIEC, and similar IEC SD-card devices.

It is designed to:

- Keep C64-visible folders short and readable.
- Avoid long Windows filenames and awkward PETSCII display issues.
- Download selected NTSC-friendly demos, diskmags, public-domain games, music/demo files, and tools.
- Keep messy downloaded archives in `PCFILES` instead of cluttering the C64 side.
- Put all CBM FileBrowser variants in the root.
- Put `FB` first in the root directory for `LOAD"*",8` convenience.

## What this project is not

This project does **not** include commercial C64 game dumps, ROM packs, TOSEC packs, or copyrighted software collections.

The repository license applies only to the scripts, documentation, folder layout, and helper files in this project. Downloaded third-party files remain under their own authors' and distributors' terms.

## Quick start for users

Download the release zip, extract it to the root of a freshly formatted FAT32 SD card, then run:

```text
PCFILES\RUN.BAT
```

When the script is done, eject the SD card safely and put it in your SD2IEC.

On the C64, try:

```basic
LOAD"*",8
RUN
```

Or:

```basic
LOAD"FB",8
RUN
```

## Recommended setup

For best results, use a freshly formatted FAT32 SD card. The script tries to force `FB` to the first root entry, but FAT directory order depends on file creation order. Running on a clean card gives the best chance that `LOAD"*",8` starts FileBrowser.

## Windows requirements

- Windows PowerShell 5.1 or newer.
- Internet access.
- 7-Zip is strongly recommended.

The script can use Windows extraction for normal ZIP files, but 7-Zip handles difficult ZIP files, `.7z` archives, and `.gz` demo disk images more reliably.

## Main card layout

```text
BASIC       Your own BASIC programs
DEMOS       NTSC and NTSC-fixed demos
DISKMAG     Scene World diskmags
GAMES       Your confirmed NTSC SD2IEC-compatible games
GAMETEST    Test area for questionable titles
MUSIC       Music and demo files
PUBLIC      Public-domain/freeware NTSC-friendly titles
TOOLS       SD2IEC/C64 tools
PCFILES     Windows scripts, cache, logs, source links
```


## Downloaded content

The downloader currently fetches selected files from sources such as:

- CBM FileBrowser
- DirPlus
- TheFutureWas8Bit SD2IEC software pack
- Scene World diskmag issues
- Zimmers NTSC-fixed demos
- Zimmers freely distributable/public-domain C64 games
- A small optional music/demo sample filed under `MUSIC`

The script may break if upstream sites move, rename, or remove files. That is normal for a downloader-based project. Check `PCFILES\LOG.TXT` after running.

## Developing or modifying the project

The source card layout lives in:

```text
sdcard/
```

For a public release, zip the **contents** of `sdcard`, not the `sdcard` folder itself. The release zip should extract directly to the root of the SD card.

## Legal notes

This project intentionally avoids bundling commercial game dumps. Do not submit pull requests that add commercial games, TOSEC packs, ROM collections, or other questionable copyrighted material.

Freely available/publicly hosted files downloaded by the script remain the property of their original authors or distributors.
