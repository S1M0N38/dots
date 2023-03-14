**My** dotfiles, configuration and installed programs.

## :computer: Specifications

- **Device**: Raspberry Pi 3 Model B
- **SD**: Samsung EVO 32GB  
- **OS**: Raspberry Pi OS Lite (64-bit)
---

## :zap: Flash SD Card

1. Download latest Raspberry Pi OS Lite (64-bit) 
  ([website](https://www.raspberrypi.com/software/operating-systems/#raspberry-pi-os-64-bit))

2. Erase SD formatting as MS-DOS(FAT) and identify SD name with
```bash
diskutil list
```

3. Let `/dev/disk420` be the name of the disk. Unmount SD 
```bash
diskutil unmountdisk /dev/disk420
```

4. Flash Raspberry Pi Os. Use `rdisk420` instead of `disk420`. Show progress with <kbd>Ctrl</kbd>T.
```bash
sudo dd if=<path/to/raspberrypi-os.img> of=/dev/rdisk420 bs=2m
```
This operation take 1-2 minutes.


## :arrow_down: Installation

1. [Setup static IP](https://pimylifeup.com/raspberry-pi-static-ip-address/)

2. Enable SSH: `sudo raspi-config` → Interfacing Options → SSH → Enable

3. [Setup Raspberry Pi SSH Keys for Authentication](https://pimylifeup.com/raspberry-pi-ssh-keys/)

4. Update repos, upgrade software and reboot
```bash
sudo apt update -y  && sudo apt upgrade -y && sudo reboot
```

5. Install CLI programs
```bash
sudo apt install -y git vim exa htop python3-pip
```

6. Clone this repo and soft link
```bash
git clone https://github.com/S1M0N38/dots.git ~/dots
```

7. Enter dots and switch to rpi branch
```bash
cd ~/dots && git checkout rpi
```

8. Install dots files
```bash
ln -f -s ~/dots/bashrc ~/.bashrc && \
ln -f -s ~/dots/config ~/.config
```
9. TODO Update linking
```bash
ln -s ~/dots/config/git ~/.config/git
ln -s ~/dots/config/vim ~/.config/vim
ln -s ~/dots/config/tmux ~/.config/tmux
```
---

## :strawberry: Projects

- [VPN](https://gist.github.com/S1M0N38/77ad8d3cb5e481aa802d43636881279c) →
 install a vpn on raspberry pi.

- [morningstreams](https://github.com/S1M0N38/morningstreams) →
expose acestreams from morningstream in you local network.

- [cr-analysis](https://github.com/S1M0N38/cr-analysis/tree/main) →
an exercise in data collection/analysis.
