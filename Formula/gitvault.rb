class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.2.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.30/gitvault-macos-aarch64.tar.gz"
      sha256 "5991dd4647345af3fa68925db5c7af500252452581e0a5bcd68a4871b9affa15"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.30/gitvault-macos-x86_64.tar.gz"
      sha256 "8780e15402f3c22fdb001aab123628b8c396dbe9d395040b9c55797b3fe8c1ac"
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
