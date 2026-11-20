# Homebrew tap for phoneset

[phoneset](https://github.com/mehmetraufoguz/phoneset) turns your iPhone into your Mac's microphone, headphones and
webcam over Wi-Fi. This tap installs the Mac program; the other half is the
[iPhone app](https://apps.apple.com/app/id6828815833).

```sh
brew install mehmetraufoguz/tap/phoneset
brew install blackhole-2ch   # the virtual microphone the phone's voice is played into
phoneset                     # shows the pairing QR code
```

Update with `brew upgrade phoneset`. The formula installs the release archive from
<https://github.com/mehmetraufoguz/phoneset/releases> and checks its SHA-256.

Only the macOS program is here. The virtual camera app (`phoneset camera install`) and the one-line installer
are described in the [main README](https://github.com/mehmetraufoguz/phoneset#readme).
If you already installed phoneset with the one-line installer (`~/.local/bin`), that copy comes first in your `PATH`;
remove one of the two.

MIT licensed, like phoneset.
