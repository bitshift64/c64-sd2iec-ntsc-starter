# Publishing

Suggested GitHub release flow:

1. Commit the contents of `repo/` to GitHub.
2. Create a release, for example `v0.1.2-alpha`.
3. Attach the ready-to-extract zip from `release-assets/`:

```text
C64_SD2IEC_NTSC_Clean_Card_v13.zip
```

4. Paste the text from `RELEASE_BODY.md` as the release description.

The release zip should extract directly to the SD card root. Users should not have to clone the repository.
