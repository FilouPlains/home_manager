{pkgs, ...}: {
  global_package = with pkgs; [
    bat
    dysk
    fastfetch
    firefox
    g-ls
    gum
    grc
    micromamba
    nvimpager
    systemdMinimal
  ];
}
