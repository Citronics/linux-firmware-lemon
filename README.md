# Linux firmware deb package for Citronics' Lemon board

This build script creates a deb package with all the relevant proprietary firmware needed to use the Lemon board.

## Building

Make sure submodules have been pulled with `git submodule update --init`.

Then simply run `./build-deb.sh`

## License

This build script is released under GPL2.0 license. However, it fetches proprietary binaries from several other git locations and packages them into a .deb file. By using this script and the generated .deb, you therefore agree to the license of the upstream repositories.
