{pkgs, ...}: {
  session_variable = {
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
}
