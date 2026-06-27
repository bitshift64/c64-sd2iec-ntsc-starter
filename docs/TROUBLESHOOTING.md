# Troubleshooting

## PowerShell opens and closes immediately

Use `PCFILES\RUN.BAT` instead of double-clicking `DOWNLOAD.PS1` directly. The BAT file keeps the window open and writes a log.

## Windows blocks the script

The BAT file launches PowerShell with execution-policy bypass for that run only:

```text
powershell.exe -NoProfile -ExecutionPolicy Bypass -File PCFILES\DOWNLOAD.PS1
```

## ZIP extraction errors

Install 7-Zip. Some ZIP files use compression methods Windows PowerShell cannot extract natively.

## Weird characters in FileBrowser

Use the cleaned C64-visible folders, not `PCFILES`. The downloader copies files into short names for folders such as `DEMOS`, `MUSIC`, `DISKMAG`, `PUBLIC`, and `TOOLS`.

`PCFILES` is for Windows scripts, logs, cache, and upstream archive contents, so it may contain long filenames.

## `LOAD"*",8` does not start FileBrowser

Use a freshly formatted card, extract the release zip to the root, then run `PCFILES\RUN.BAT`. The script runs a boot-first finalizer that recreates the root directory order with `FB` first.

You can always use:

```basic
LOAD"FB",8
RUN
```
