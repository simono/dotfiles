# Linux Setup

## Prerequisites

Install base packages:

```sh
sudo apt install -y build-essential curl git ufw
```

## Homebrew

Install [Homebrew](https://brew.sh/).

## Dotfiles

See [README](../README.md).

## Rust

Initialize the Rust toolchain (installed via Homebrew):

```sh
rustup-init
```

## Unattended Upgrades

```sh
sudo apt install -y unattended-upgrades
sudo dpkg-reconfigure -plow unattended-upgrades
```

## Shell

Change the default shell to Homebrew's fish:

```sh
sudo chsh -s $(brew --prefix)/bin/fish
```
