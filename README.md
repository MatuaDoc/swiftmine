# swiftmine
Minesweeper with Swift 5 and [Qlift](https://github.com/MatuaDoc/Qlift "Qlift")

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/MatuaDoc/swiftmine/main/LICENSE)

## Building

Qt must be installed, of coures. On Linux, `pkgconfig` is used to find the build flags. On macOS, Qt must be installed using Homebrew.

### swiftpm

`swift build`

[Qlift](https://github.com/MatuaDoc/Qlift "Qlift") provides the *.ui file compiler, `qlift-uic`, which must be used to compile the files from the UI 
directory into Swift source files in the Sources directory. This must be repeated whenever the *.ui files are changed.

## Screenshot

![Screenshot](./screenshot.png "Screenshot")
