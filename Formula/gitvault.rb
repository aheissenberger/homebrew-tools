class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.5/gitvault-macos-aarch64.tar.gz"
      sha256 "330f486b291d5bd6561f6b4b00ebae7e67f0f7bc9914311afd066470c3b0c590"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.4.5/gitvault-macos-x86_64.tar.gz"
      sha256 "8db7d5db1624c9530cd6da24241fcc54d56408a14fa3259f9e7f94d34bc24a17"
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
