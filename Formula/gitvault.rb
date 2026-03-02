class Gitvault < Formula
  desc "gitvault CLI"
  homepage "https://github.com/aheissenberger/gitvault"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.4/gitvault-macos-aarch64"
      sha256 "b1c65f028f702dc4f488237435587ad81a49d394f404e9110030e7a71608c349"
    end

    on_intel do
      url "https://github.com/aheissenberger/gitvault/releases/download/v0.2.4/gitvault-macos-x86_64"
      sha256 "8c2f22805009c0e06b1ce15f4d23bc8646d9027e9f22082617d155600a5cdc3e"
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
    system "#{bin}/gitvault", "--help"
  end
end
