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
    languages = {
      language = [
        {
          name = "nix";
          auto-format = true;
          formatter = {
            command = "alejandra";
            args = ["-q"];
          };
        }
        {
          name = "rust";
          auto-format = true;
        }
      ];

      language-server = {
        rust-analyzer = {
          config = {
            checkOnSave = {
              command = "clippy";
            };
            files = {
              excludeDirs = [".direnv" ".git" "target"];
            };
          };
        };
      };
    };
  };
}
