class Dvom < Formula
  desc "Bump tool"
  homepage "https://github.com/ypeckstadt/bump"
  url "https://github.com/ypeckstadt/bump/archive/v0.3.0.tar.gz"
  sha256 "502e2a4353e30f3cb3278f8cc0dcda9062f96a1d4d350a659723f23bee7510ef"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/bump", "--version"
  end
end
