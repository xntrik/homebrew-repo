class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "2f2eb0ccc453fdca992abae2c1428fa39d45febb3df5c4ae6526e6d82842d276"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  bottle do
    root_url "https://github.com/xntrik/homebrew-repo/releases/download/hcltm-0.1.3"
    sha256 cellar: :any_skip_relocation, big_sur:      "824144c7a67bd4eeeecd8e76f6696f45ab81feffd3ab16a49d35e68da7e3eeec"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5f802270e518d5f201dae2776f151ccabdf26158b2f31c0235c11d6911064c90"
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
