# ❄️ macOS Nix Dotfiles

![macOS](https://img.shields.io/badge/macOS-000000?style=for-the-badge&logo=apple&logoColor=white)
![Nix](https://img.shields.io/badge/Nix-5277C3?style=for-the-badge&logo=NixOS&logoColor=white)
![Helix](https://img.shields.io/badge/Helix-282A36?style=for-the-badge&logo=Helix&logoColor=white)
![Rust](https://img.shields.io/badge/Rust-000000?style=for-the-badge&logo=rust&logoColor=white)
![C++](https://img.shields.io/badge/C++-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)

## Showcase
![Terminal Showcase](assets/image.png)

## Stack

| Category | Tool | Description |
| :--- | :--- | :--- |
| **OS** | macOS | Host Operating System |
| **Package/Env** | Nix + Home Manager | Flakes enabled, declarative management |
| **Terminal** | Ghostty | GPU-accelerated, Catppuccin Mocha theme |
| **Shell** | Zsh + Starship | Fast, contextual prompt |
| **Editor** | Helix | Modal editor configured for C++/Rust/Nix |
| **Workspace** | direnv + nix-direnv | Per-directory environment switching |

## Architecture
```text
.
├── flake.nix          # エントリポイント (Inputs / Outputs)
├── flake.lock         # 依存バージョンのスナップショット
├── home.nix           # ベース設定・モジュールの読み込み
└── modules/           # 機能ごとの設定群
    ├── ghostty.nix    # ターミナルエミュレータ
    ├── helix.nix      # エディタ・LSP設定
    └── zsh.nix        # シェル・エイリアス・プロンプト
```

## Bootstrapping

### 1. Nix 導入
[Determinate Systems](https://determinate.systems/nix) 使用
```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### 2. リポジトリのクローン
設定ファイルを Home Manager のデフォルトパスに配置
```bash
git clone https://github.com/s4chiko/nix-dotfiles.git ~/.config/home-manager
cd ~/.config/home-manager
```

### 3. Home Manager の適用 (Activation)
```bash
nix run home-manager/master -- switch --flake .#user