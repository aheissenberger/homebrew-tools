class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.3.1/gitvault-macos-aarch64.tar.gz"
      sha256 "210d53abbd61a43e65b094dee6337963ee2c1d08e730a3efbff081d439b8ca02"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.3.1/gitvault-macos-x86_64.tar.gz"
      sha256 "8134c6560b3542f123614532f1961090c09f8d5526fce8e206d72a57836b2f63"
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
