{pkgs, ...}: {
  imports = [
    ../package/general_setup.nix
  ];
  # Do not change this value.
  # If you want to do so, check `Home Manager release notes`.
  home = {
    stateVersion = "24.05";

    sessionVariables = {
      # C
      COLORTERM = "truecolor";

      # E
      EDITOR = "nvim";

      # M
      MAMBA_EXE = "${pkgs.micromamba}/bin/micromamba";
      MANROFFOPT = "-P -c";
      MANPAGER = "nvimpager";

      # N
      NIXPKGS_ALLOW_UNFREE = 1;

      # P
      PAGER = "nvimpager";
      PYTHONPYCACHEPREFIX = "$HOME/.cache/cpython/";
    };

    packages = with pkgs; [
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
  };

  targets.genericLinux.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  stylix.enable = true;
}
