class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "553199158359640b49d2772b3e5ba717a510a29c567c63728761b2b78993c91b"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  bottle do
    root_url "https://github.com/xntrik/homebrew-repo/releases/download/hcltm-0.1.7"
    sha256 cellar: :any_skip_relocation, monterey: "58641da38145eda9d130518f9f05dc574bca09e81b3fefae55ee381879650252"
  end

  depends_on "go"

  def install
    system "go", "build", "-o", "bin/hcltm", "./cmd/hcltm"
    bin.install "bin/hcltm"
  end

  test do
    assert_match @version.to_s, shell_output("#{bin}/hcltm --version")
  end
end
