class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.2.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.27/gitvault-macos-aarch64.tar.gz"
      sha256 "ae8003bd075dc71e2353762d4e3a4745378955fc7c8bbb695f352732d2551ec4"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.27/gitvault-macos-x86_64.tar.gz"
      sha256 "e9441ab3bf9469cb33b694010171119f0b3d6468c8ee87a6fc5f49727b882d11"
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
