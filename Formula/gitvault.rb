class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.2.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.22/gitvault-macos-aarch64.tar.gz"
      sha256 "f39f63241825a03519585c5a1318b225eeff1903eadffc03a05b1075de91cea7"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.22/gitvault-macos-x86_64.tar.gz"
      sha256 "7dc47c4cbdb0e6e1f21026113111cdad839c03e690ff6a6d51571ec241173754"
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
