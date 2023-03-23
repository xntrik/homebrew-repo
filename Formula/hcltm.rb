class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "f4f1ddb8f514678e17728cab553205b320ecca17eaa3e4693222f6788331e9ff"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  bottle do
    root_url "https://github.com/xntrik/homebrew-repo/releases/download/hcltm-0.1.6"
    sha256 cellar: :any_skip_relocation, monterey:     "d729be37c4e62a3b9874169bfdd74c7c3167a1a9172e5196c97a8f7b2128c80d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fb7d6f6536644c615eaf00cd00281bf7deae1864f527ce2a2cd950e53c8cc9da"
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
