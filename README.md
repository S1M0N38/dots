**My** dotfiles, configuration and installed programs.

## :computer: Specifications

- **Device**: MacBook Air (13-inch, Early 2014)
- **Processor**: 1,7 GHz Dual-Core Intel Core i7
- **Memory**: 8 GB 1600 MHz DDR3
- **Graphics**: Intel HD Graphics 5000 1536 MB
- **OS**: macOS Monterey (Version 12.6.3)

---

## :arrow_down: Installation

1. Many programs are installed using [Homebrew](https://brew.sh/) Package Manager
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. SSH keys ([tutorial](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)) are useful for:
  - to ssh into external computer 
  - pull/push private and public repo on GitHub
  - signing git commit

3. Install [zap](https://github.com/zap-zsh/zap) as zsh plugins manager
```bash
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh)
```

3. Clone this repo and soft link
```bash
mkdir ~/Developer && \
git clone git@github.com:S1M0N38/dots.git ~/Developer/dots
```
```bash
ln -s ~/Developer/dots/zshenv ~/.zshenv
ln -s ~/Developer/dots/config ~/.config
```

4. Install CLI programs
```bash
brew install                                \
  bat htop exa fd fzf git go lazygit lf     \
  neovim pyenv ripgrep skhd tectonic texlab \
```

5. Install GUI programs
```bash
brew install --cask                         \
  rectangle alacritty mpv notunes           \
  transmission skim the-unarchiver          \
  tunnelblick
```

6. Other applications
- [Docker](https://docs.docker.com/desktop/install/mac-install/) 
- [Telegram](https://macos.telegram.org/)
- [Whatsapp](https://www.whatsapp.com/download)
- [Rust](https://www.rust-lang.org/tools/install)
- [Nvm](https://github.com/nvm-sh/nvm)
- [Git-open](https://github.com/paulirish/git-open)
- [GPG](https://gist.github.com/S1M0N38/165024e05d29159441af9972da3847eb)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [LunarVim](https://www.lunarvim.org/)

---

## :gear: Settings

- [Change DNS](https://support.apple.com/en-in/guide/mac-help/mh14127/11.0/mac/11.0)
