class Dvom < Formula
  desc "Bump tool"
  homepage "https://github.com/ypeckstadt/bump"
  url "https://github.com/ypeckstadt/bump/archive/v0.1.0.tar.gz"
  sha256 "3241dce1b99f66b6b7910eab718ab96c200c498367a102122c11a87ea966dd60"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/bump", "--version"
  end
end
