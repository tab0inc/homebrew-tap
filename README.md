# homebrew-tap

Homebrew formulae for Tab0 tools. Each Formula installs a signed and notarized
macOS release (Apple silicon and Intel) and is updated by its project's release
workflow.

## decis-cli

```bash
brew install tab0inc/tap/decis-cli
```

The `decis-cli` Formula installs the `decis` executable.

## happen

```bash
brew install tab0inc/tap/happen
happen setup
brew services start happen
happen open
```

The `happen` Formula installs the `happen` executable: the Happen server, its
web app, and the CLI a supervising Claude Code or Codex session uses.
`happen setup` prepares the Mac once, and `brew services` keeps the server
running on `127.0.0.1:4318`. `happen upgrade` upgrades through Homebrew, and the
server restarts itself onto the new version. Releases:
[tab0inc/happen-releases](https://github.com/tab0inc/happen-releases/releases).
