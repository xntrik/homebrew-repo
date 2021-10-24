class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0d9d27ebb8329937e71ebaed4af73c2c2d9a01caf085a6c49a41c71728f31581"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bin/hcltm", "./cmd/hcltm"
    bin.install "bin/hcltm"
  end

  test do
    assert_match @version.to_s, shell_output("#{bin}/hcltm --version")
  end
end
