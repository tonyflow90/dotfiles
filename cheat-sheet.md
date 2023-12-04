# clean bootloader

```bash
# list all
sudo nix-env --list-generations --profile /nix/var/nix/profiles/system
# delete x y z
sudo nix-env --delete-generations --profile /nix/var/nix/profiles/system x y z
sudo nix-collect-garbage
sudo nixos-rebuild switch
```

# nixos packagemanager

```bash
# install
nix-env -iA vscode
# delete
nix-env -e vscode
# show install p
nix-env -q
```

# nixos config

```bash
sudo nano /etc/nixos/configuration.nix 
```