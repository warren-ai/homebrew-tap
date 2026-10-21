# Warren Homebrew tap

[Warren for Mac](https://warren.markets): AI agents that invest by your rules.

```
brew install --cask warren-ai/tap/warren
```

Warren updates itself once installed. To remove it and everything it stores:

```
brew uninstall --zap --cask warren
```

Or install without Homebrew:

```
curl -fsSL https://warren.markets/install.sh | sh
```

The cask is updated by `desktop-app/scripts/publish-mac.sh` in the Warren
monorepo on every release — edit it there, not by hand.
