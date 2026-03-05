class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.3/gitvault-macos-aarch64.tar.gz"
      sha256 "13303f962efd750688a8cd0e567581079002b42c8214e7be3c3c4ff499340307"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.3/gitvault-macos-x86_64.tar.gz"
      sha256 "d9e2f0b9a8a19717db43c2c27698b9672d6c88c23780393c1da608f4bb920a39"
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
