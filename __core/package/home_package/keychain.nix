{
  programs.keychain = {
    enable = true;

    keys = [
      "github_id_rsa"
    ];

    extraFlags = [
      "--quiet"
    ];
  };
}
