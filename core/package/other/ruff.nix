{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.ruff = {
    enable = true;

    settings = {
      line-length = 79;
      indent-width = 4;

      format = {
        quote-style = "double";
        indent-style = "space";
      };
    };
  };
}
