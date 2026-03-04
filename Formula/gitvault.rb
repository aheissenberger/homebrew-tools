class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.10/gitvault-macos-aarch64.tar.gz"
      sha256 "a1fa66196598d29f11e7f9a5ffcf5c5705a66c34970c25bd57013a892c774b79"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.10/gitvault-macos-x86_64.tar.gz"
      sha256 "bc1ae33c1c2da7bee085e62f5fca06b33ede09cc4ab9d3f140fe3f1465c22a97"
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
