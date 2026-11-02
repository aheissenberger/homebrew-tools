class Pseudofy < Formula
  desc "Stable pseudonyms for names and email addresses in CSV and XLSX files"
  homepage "https://github.com/aheissenberger/pseudofy"
  url "https://github.com/aheissenberger/pseudofy/releases/download/v0.1.0/pseudofy-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "7e3705dda74c49c155d3225747686508fb9548d535e09e05c0c0d4bbf95776a6"
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
