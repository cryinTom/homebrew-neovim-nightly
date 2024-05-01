cask "neovim-nightly" do
  version :latest
  sha256 :no_check

  arch arm: "arm64", intel: "x86_64"
  url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz",

      verified: "github.com/neovim"

  name "Neovim"
  desc "Vim-fork focused on extensibility and usability"
  homepage "https://neovim.io"

  conflicts_with formula: "neovim"

  binary "nvim-macos-arm64/bin/nvim"

  postflight do
    system_command "xattr", args: ["-cr", "#{staged_path}"]
  end
end
