# homebrew-tap

Homebrew tap for my macOS apps.

## Install

```bash
brew install --cask sergioarojasm98/tap/freeleapp
```

| Cask | App |
|------|-----|
| `freeleapp` | [Freeleapp](https://github.com/sergioarojasm98/freeleapp): desktop app for temporary AWS and Azure credentials, based on Leapp |

Freeleapp is signed with a Developer ID and notarized by Apple, and it updates itself from the app. To upgrade through Homebrew instead, use `brew upgrade --cask --greedy freeleapp`.

## Uninstall

```bash
brew uninstall --cask freeleapp          # keeps your sessions and settings
brew uninstall --cask --zap freeleapp    # also removes ~/.freeleapp and the app's caches and logs
```

Keychain items stay; remove the `Freeleapp` entries in Keychain Access if you no longer need them.

## How updates reach the tap

Each Freeleapp release updates `Casks/freeleapp.rb` (version and checksum) from its release workflow. CI checks the cask style and installs it on macOS.

## License

[MIT](LICENSE)
