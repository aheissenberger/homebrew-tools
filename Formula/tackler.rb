class Tackler < Formula
  desc "Bookkeeping engine with native GIT SCM support for plain text accounting"
  homepage "https://tackler.fi/"
  url "https://github.com/tackler-ng/tackler/archive/refs/tags/v26.01.2.tar.gz"
  sha256 "e23a1193915e74cdcc1fab7e884361a38e81c46c394953eb6f4579981d9fcb0e"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "tackler-cli")
  end

  test do
    assert_match "tackler", shell_output("#{bin}/tackler --version")
  end
end
