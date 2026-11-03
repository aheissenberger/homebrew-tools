class Pseudofy < Formula
  desc "Stable pseudonyms for names and email addresses in CSV and XLSX files"
  homepage "https://github.com/aheissenberger/pseudofy"
  url "https://github.com/aheissenberger/pseudofy/releases/download/v0.4.0/pseudofy-0.4.0-aarch64-apple-darwin.tar.gz"
  sha256 "677e7b74846069b74c0706b8480998216da113ae9e091ade8a4c1e415d038aa3"
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
