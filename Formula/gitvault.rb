class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.2/gitvault-macos-aarch64.tar.gz"
      sha256 "8b3189a9dfb20aed06299218ca73bb4b6003c63a93150df11c48fa5b16fa2379"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.2/gitvault-macos-x86_64.tar.gz"
      sha256 "ba0a8648435f221998366f03645423e3e6761f02f3bb11701ad12ca9873c08c0"
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
