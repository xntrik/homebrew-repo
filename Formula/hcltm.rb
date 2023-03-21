class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "f4f1ddb8f514678e17728cab553205b320ecca17eaa3e4693222f6788331e9ff"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  bottle do
    root_url "https://github.com/xntrik/homebrew-repo/releases/download/hcltm-0.1.5"
    sha256 cellar: :any_skip_relocation, big_sur:      "7ab41a2f14aae683d0e9dd66e355caf022e14fc8f71a53bc7c390f65c291cc62"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4c33b937957e20092f8eee6b58ccc94b1281bb55ea7b0261fd15cb5abbe595e8"
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
