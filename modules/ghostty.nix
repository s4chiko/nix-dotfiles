{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    ghostty-bin
    fastfetch
    alejandra
  ];

  xdg.configFile."ghostty/config".text = ''
    font-family = "HackGen Console NF"
    theme = "Github Dark"
  '';
}
