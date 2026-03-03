class Gitvault < Formula
  desc "Secure, Git-native vault for managing age-encrypted secrets"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.2.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.28/gitvault-macos-aarch64.tar.gz"
      sha256 "8e852972d93d3b3d430e055d6d3162f3d918bb5c3987323d6ea07de896c5d52c"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.28/gitvault-macos-x86_64.tar.gz"
      sha256 "53356eb6b7906baa6310efb4cbe5e29cf005f4a763f303a7bf02e98f47db0f91"
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
