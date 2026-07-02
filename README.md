# homebrew-btsnoop-adb

Homebrew tap for [btsnoop-adb](https://github.com/thelok1s/btsnoop-adb) — stream Android Bluetooth HCI packets live into Wireshark via ADB.

## Install

```bash
brew tap thelok1s/btsnoop-adb
brew install btsnoop-adb
```

That's it. `btsnoop-adb` will be on your PATH.

## Usage

```bash
# Open live Wireshark capture (requires rooted Android device)
btsnoop-adb

# All options
btsnoop-adb --help
```

See the [main repo](https://github.com/thelok1s/btsnoop-adb) for full documentation.

## Update

```bash
brew update
brew upgrade btsnoop-adb
```

## Uninstall

```bash
brew uninstall btsnoop-adb
brew untap thelok1s/btsnoop-adb
```
