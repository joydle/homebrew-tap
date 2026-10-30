# joydle/homebrew-tap

Homebrew formulae and casks from Joydle.

## Winch

[Winch](https://getwinch.app) is App Store and Google Play optimization for the Mac, run by your own
coding agent (Claude Code, Codex, OpenCode, Ollama or OpenRouter).

```sh
brew trust joydle/tap
brew install --cask joydle/tap/winch
```

Homebrew 7 loads casks from other taps only once you trust them; `brew trust joydle/tap` does that
for this tap.

macOS 13 or later, Apple silicon and Intel. Winch updates itself; a license key activates it
(getwinch.app).

## Arf

[Arf](https://github.com/joydle/Arf) is a from-scratch LLM inference engine for Apple silicon.

```sh
brew trust joydle/tap
brew install joydle/tap/arf
```

Apple silicon only. The formula installs the prebuilt `arf`, `arf-serve` and `arf-router` binaries from
the matching [Arf release](https://github.com/joydle/Arf/releases).
