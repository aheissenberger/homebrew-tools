class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.3.1/gitvault-macos-aarch64.tar.gz"
      sha256 "2fcd4b408584669cfe23dc1030deec7fb2717637cadc4fc9948841b9f6614d17"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.3.1/gitvault-macos-x86_64.tar.gz"
      sha256 "14e9b9cccd72929d3474de2fe89ba1d3d4927cc179bbd766447145fff2d2d81f"
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
