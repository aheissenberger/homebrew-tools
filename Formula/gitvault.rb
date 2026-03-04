class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.4.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.9/gitvault-macos-aarch64.tar.gz"
      sha256 "18d17c8b3ec743f8efa2ab6f8dfc6143e64272f331255fdf38020fab1fa2d09d"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.9/gitvault-macos-x86_64.tar.gz"
      sha256 "5882c4cfcb7dcdc4281f92ce651b9c88d916bc6ae04e2cc350f7dcc6724695a3"
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
