# homebrew-tap

Homebrew formulae and casks for Tab0 tools. Each installs a signed and
notarized macOS release and is updated by its project's release workflow.

## decis-cli

```bash
brew install tab0inc/tap/decis-cli
```

The `decis-cli` Formula installs the `decis` executable.

## happen

```bash
brew install --cask tab0inc/tap/happen
open -a Happen
```

The `happen` Cask installs Happen.app (Apple silicon, macOS 13 or later): the
Happen server, its web app in a window, and the `happen` CLI a supervising
Claude Code, OpenCode, or Codex session uses. The Cask links the app's `happen`
into Homebrew's `bin`. The app keeps the server running on `127.0.0.1:4318` and
updates itself with Sparkle, so `brew upgrade` leaves it alone. Opening it the
first time walks through Claude Code, sign-in, and the first space.

`brew uninstall --cask happen` removes the app; `--zap` also removes its caches
and preferences, but never the settings (`~/.config/happen`) or the data
(`~/Library/Application Support/happen`).

Happen 0.12.0 and earlier shipped as the `happen` Formula, which is gone from
0.13.0. To move from it, stop and remove it, then install the Cask; settings and
data carry over:

```bash
brew services stop happen
brew uninstall --formula happen
brew install --cask tab0inc/tap/happen
```

Releases: [tab0inc/happen-releases](https://github.com/tab0inc/happen-releases/releases).
