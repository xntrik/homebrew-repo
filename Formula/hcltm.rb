class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0d9d27ebb8329937e71ebaed4af73c2c2d9a01caf085a6c49a41c71728f31581"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  bottle do
    root_url "https://github.com/xntrik/homebrew-repo/releases/download/hcltm-0.1.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "e3f206ffe03a8cadb9385a4939e6d318b12eedeff77fc26716bd73593559508d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cae7670c4fc80067272fd855b8d2542487a02b57950ac6b65bfcb1d7dd5eb3cd"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "bin/hcltm", "./cmd/hcltm"
    bin.install "bin/hcltm"
  end

  test do
    assert_match @version.to_s, shell_output("#{bin}/hcltm --version")
  end
end
