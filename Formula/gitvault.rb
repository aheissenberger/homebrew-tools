class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.6/gitvault-macos-aarch64.tar.gz"
      sha256 "3b320aafd001c1a39fe1cae1d704f07e9332511a7e06cbc1592def329a0781af"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.5.6/gitvault-macos-x86_64.tar.gz"
      sha256 "c770a726f2b0c9670157a23caa44a4f077bf283dcabb70b14ded25f1326b257a"
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
