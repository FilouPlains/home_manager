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
      MANROFFOPT = "-P -c";
      MANPAGER = "nvimpager";

      # P
      PAGER = "nvimpager";
      PYTHONPYCACHEPREFIX = "$HOME/.cache/cpython/";
    };

    packages = with pkgs; [
      bat
      fastfetch
      grc
    ];
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  stylix.enable = true;
}
