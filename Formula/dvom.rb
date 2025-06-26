class Dvom < Formula
  desc "DVOM tool"
  homepage "https://github.com/ypeckstadt/dvom"
  url "https://github.com/ypeckstadt/dvom/archive/v0.1.0.tar.gz"
  sha256 "initial_sha256_here"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/dvom", "--version"
  end
end
