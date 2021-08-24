# Diego Algara - Founder of [Nubenautas](https://nubenautas.com/), [ReguDocs](https://regudocs.com/) & [GTFS Studio](https://gtfs.studio)

## Gists:
[Linux Commands](https://gist.github.com/mencargo/c5e8c296a4e5492cdfb8c08774aed798)

[PostgreSQL Queries](https://gist.github.com/mencargo/79447185034ebabcb49087008fbdc266)

[DNSmasq cache & filter](https://gist.github.com/mencargo/1c66729f3db840f49c8cde2012d437d7)

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
