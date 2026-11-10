# Microapps Homebrew tap

This tap installs the same signed and notarised MicroNotch app as the [website](https://micronotch.app/). It supports Apple silicon and Intel Macs running macOS 15 or later. The usual trial, licence activation and in-app updates apply.

Install with:

```sh
brew install --cask microapps-repo/tap/micronotch
```

MicroNotch can update itself. To request an upgrade through Homebrew explicitly:

```sh
brew upgrade --cask --greedy microapps-repo/tap/micronotch
```

## Updating the cask

After a new production download is live, take the version, build number, immutable DMG URL and SHA-256 from the [public download manifest](https://micronotch.app/download?format=json). Update `Casks/micronotch.rb` with the version and build as a comma-separated pair: the build distinguishes releases that share a public version number. Confirm the manifest and the [Sparkle feed](https://micronotch.app/updates/appcast.xml) describe the same release.

Check the local cask file before publishing:

```sh
brew style ./Casks/micronotch.rb
brew fetch --cask ./Casks/micronotch.rb
```

After publishing, use a checkout of the tap that Homebrew has added and trusted (the install command above does both), then check it by name:

```sh
brew audit --cask --online microapps-repo/tap/micronotch
brew livecheck --cask microapps-repo/tap/micronotch
```

Before advertising the tap, test the public install command and first launch on a Mac or VM without MicroNotch installed.
