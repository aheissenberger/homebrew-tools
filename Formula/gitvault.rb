class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.20/gitvault-macos-aarch64"
      sha256 "a29e4bc53a2c045636e4d049a2e4f6ec9f334c49f98abeb4fcb87f4c51339d2c"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.20/gitvault-macos-x86_64"
      sha256 "7828c209058b99106b459d65b46d580e20af0bbbf0d8c29ba2354dffc41eb8bd"
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
