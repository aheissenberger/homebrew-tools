class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.4.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.11/gitvault-macos-aarch64.tar.gz"
      sha256 "33245a96179ac21bb84148be3c780241f3f403d9dd1f8de50b7b08932cd3496e"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.11/gitvault-macos-x86_64.tar.gz"
      sha256 "53dd17a9ab19e56891b08949e848aa837ee65cdf21e42a37bad9b19f2b4705d9"
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
