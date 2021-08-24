# Local

```
curl https://raw.githubusercontent.com/mencargo/mencargo.github.io/main/.bashrc -o ~/.bashrc
mkdir ~/bin
curl https://raw.githubusercontent.com/mencargo/mencargo.github.io/main/aur -o ~/bin/aur
chmod +x ~/bin/aur
echo "gem: --no-document" > ~/.gemrc
```

# Server
```
$ curl https://raw.githubusercontent.com/mencargo/mencargo.github.io/main/.bashrc_server -o ~/.bashrc
# curl https://raw.githubusercontent.com/mencargo/mencargo.github.io/main/.bashrc_server_root -o ~/.bashrc
```

# AUR:
Backup: `# pacman -Qqe | grep -v "$(pacman -Qqm)" > pacman.lst`

Restore: `# cat pacman.lst | xargs pacman -S --needed --noconfirm`
