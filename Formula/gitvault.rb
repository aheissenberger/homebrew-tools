class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.2.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.21/gitvault-macos-aarch64.tar.gz"
      sha256 "66a946d28b5796eb5183d8b5700d81d4178e4781f7c96f65d2f369e856fcca60"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.21/gitvault-macos-x86_64.tar.gz"
      sha256 "22cca76f94e1360fbc64fd86165fabaada8ee9eaa41d320549c5f158fcf67ff8"
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
