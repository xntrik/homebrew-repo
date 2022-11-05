class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "2f2eb0ccc453fdca992abae2c1428fa39d45febb3df5c4ae6526e6d82842d276"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  bottle do
    root_url "https://github.com/xntrik/homebrew-repo/releases/download/hcltm-0.1.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "c5fc28f3eb9aa91cb50e2f25c2c85cfea70d8b9e66d4c4158c4320d3e7ce7af7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "72bde718e63aab8061cae0c9dded77db07b2e70f777b27e96e83a89e47e990d2"
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
