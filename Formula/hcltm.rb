class Hcltm < Formula
  desc "Documenting your Threat Models with HCL"
  homepage "https://github.com/xntrik/hcltm"
  url "https://github.com/xntrik/hcltm/archive/refs/tags/v0.1.2.zip"
  sha256 "2ebe0cb61b841f79e97808a11c2a6a1ea67174c88e3d2f66964b9f17b66bf04d"
  license "MIT"
  head "https://github.com/xntrik/hcltm.git", branch: "main"

  bottle do
    root_url "https://github.com/xntrik/homebrew-repo/releases/download/hcltm-0.1.1"
    sha256 cellar: :any_skip_relocation, big_sur:      "3c16768aadefd2c4c334dea48c20277f0917b2c6865d6feb9899a27894748f52"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6ab384db0a494fa186cf956a3e52c8c893799713292299223b948f090b457ba1"
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
