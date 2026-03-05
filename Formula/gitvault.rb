class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.1/gitvault-macos-aarch64.tar.gz"
      sha256 "9171272c213584032248900326786d9b208afbd4a2aca314f2d3574fc47a869c"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.1/gitvault-macos-x86_64.tar.gz"
      sha256 "56f672851fe2a40c9d197bfbb128f802e4c6ab52fad2ddb75649011e126a7724"
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
