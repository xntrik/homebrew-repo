class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "3ad7f449741513c6a1596cb6b8002a84185fb1f0866d2c73d6891e63395c7897"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bin/hcltm", "./cmd/hcltm"
    bin.install "bin/hcltm"
    system "hcltm", "-autocomplete-install"
  end

  test do
    assert_match @version.to_s, shell_output("#{bin}/hcltm --version")
  end
end
