
{ pkgs, ... }:

{
    programs.bash = {
        enable = true;
        bashrcExtra = ''
            neofetch
        '';
    };
}