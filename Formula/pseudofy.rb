class Pseudofy < Formula
  desc "Stable pseudonyms for names and email addresses in CSV and XLSX files"
  homepage "https://github.com/aheissenberger/pseudofy"
  url "https://github.com/aheissenberger/pseudofy/releases/download/v0.2.0/pseudofy-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "700e2348b56aa0be3f5e2115f0e7b165209ae4984bd8a536111b784f1d757329"
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
