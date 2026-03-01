class Gitvault < Formula
  desc "Git-native secrets manager for multi-developer and multi-agent workflows"
  homepage "https://github.com/aheissenberger/gitvault"
  url "https://github.com/aheissenberger/gitvault/releases/download/v0.1.8/gitvault-v0.1.8-universal-apple-darwin.tar.gz"
  version "0.1.8"
  sha256 "afa4e47cec478a769fea8f124c7d51dbef4af1425c43b647579df9ebca634969"

  def install
    bin.install "gitvault"
  end

  test do
    assert_match "gitvault", shell_output("#{bin}/gitvault --version")
  end
end
