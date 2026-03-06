class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.4/gitvault-macos-aarch64.tar.gz"
      sha256 "0d9bc6a01ccdacc8b9e18f2e20ec9eb1f8e03083b8a1cc0c5a48d8d4ae44aa8f"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.4/gitvault-macos-x86_64.tar.gz"
      sha256 "06c17774bc9044bd380609bafafd7ff01515298cb7e47ffd033e71835a923180"
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
