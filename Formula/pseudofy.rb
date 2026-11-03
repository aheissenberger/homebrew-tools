class Pseudofy < Formula
  desc "Stable pseudonyms for names and email addresses in CSV and XLSX files"
  homepage "https://github.com/aheissenberger/pseudofy"
  url "https://github.com/aheissenberger/pseudofy/releases/download/v0.3.0/pseudofy-0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "89971e3df30239d4fe21cbda0d13458ced8dd4624d4f12b6b41f12493e348ace"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "pseudofy"
  end

  test do
    assert_equal "pseudofy #{version}\n", shell_output("#{bin}/pseudofy --version")
  end
end
