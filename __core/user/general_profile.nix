{
  global_package,
  session_variable,
  ...
}: {
  home = {
    # Do not change this value.
    # If you want to do so, check `Home Manager release notes`.
    stateVersion = "24.05";

    sessionVariables = session_variable;
    packages = global_package;
  };

  targets.genericLinux.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  stylix.enable = true;
}
