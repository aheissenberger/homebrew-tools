class Gitvault < Formula
  desc "A secure, distributed vault for managing secrets and sensitive data with Git"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.2.18"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.18/gitvault-macos-aarch64"
      sha256 "cd4c33f473f5580de1a096b60353a7fc6d6a03d0c28fbe5bdc64d291642040fd"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.18/gitvault-macos-x86_64"
      sha256 "e60ee11e16469fbd5f52326ae1067cbfe6482d329206b85b26ec34daa7403339"
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
    system "#{bin}/gitvault", "--help"
  end
end
