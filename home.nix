{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./modules/helix.nix
    ./modules/ghostty.nix
    ./modules/zsh.nix
  ];

  home.username = "user"; # Macのユーザー名
  home.homeDirectory = "/Users/user"; # ホームディレクトリのパス
  home.stateVersion = "24.05"; # 変更不要

  # Home Manager自身にHome Managerを管理させる
  programs.home-manager.enable = true;

  # ローカルマニュアルの生成をオフにして警告を消す＆ビルド高速化
  manual.manpages.enable = false;
  manual.html.enable = false;
  manual.json.enable = false;
}
