class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.6/gitvault-macos-aarch64.tar.gz"
      sha256 "ad92899bf32c80e470a6c68a23f3eed8268ab8f4291c97c59a24025c415f333d"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.6/gitvault-macos-x86_64.tar.gz"
      sha256 "0100615d03ef6765bcfbc5b811826fdb1e4f20c4a4763dabc15cc873cff467c3"
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
