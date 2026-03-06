class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.5/gitvault-macos-aarch64.tar.gz"
      sha256 "3bc4a4e0d06bf0c3018d25e53f79342c8b2ea1ddabc4145b0636821144640a36"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.5/gitvault-macos-x86_64.tar.gz"
      sha256 "c79128495e458b26f4cc990481170a47392abd65e530d289cc44617af571266d"
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
