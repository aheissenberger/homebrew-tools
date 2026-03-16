class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.7/gitvault-macos-aarch64.tar.gz"
      sha256 "b7d30ea58926e56e73c98849eb08be020b615698422cc2d9245d9360120eeeff"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.7/gitvault-macos-x86_64.tar.gz"
      sha256 "211b44d0cfe9c76256a576757b5d621b1f086ea5c73e123887ae706c57b2a2d8"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "gitvault-macos-aarch64" => "gitvault"
    else
      bin.install "gitvault-macos-x86_64" => "gitvault"
    end
  end

  test do
    system bin/"gitvault", "--help"
  end
end
