class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "d3127665f4b2acd3210ebe1eb019f79a29143e150f0c05f5d72cc8d2385538af"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  bottle do
    root_url "https://github.com/xntrik/homebrew-repo/releases/download/hcltm-0.1.4"
    sha256 cellar: :any_skip_relocation, big_sur:      "4a08499bf5fe6c086c00ff557f2adbd53430027c07c43f64ad4a07d906287bc0"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "54170891b5830083699e892e6c578f937181e0b76232f0f33f435df4ec82c5b6"
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
