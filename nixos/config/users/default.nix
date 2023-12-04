{ config, username, ... }:
{
  users = {
    users = {
      ${username} = {
        isNormalUser = true;
        description = "keno";
        extraGroups = [
          "networkmanager"
          "wheel"
        ];
      };
    };
  };
}
