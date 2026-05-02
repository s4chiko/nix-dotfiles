{
  config,
  pkgs,
  ...
}: {
  programs.helix = {
    enable = true;
    settings = {
      theme = "github_dark";
      editor = {
        line-number = "relative";
        mouse = false;
      };
    };
  };
}
