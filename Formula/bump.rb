class Bump < Formula
  desc "Bump tool"
  homepage "https://github.com/ypeckstadt/bump"
  url "https://github.com/ypeckstadt/bump/archive/v0.4.0.tar.gz"
  sha256 "17e90db0c6eae47bae063cbdd1822313f25a21f58ad3fb5947240c59283c7b37"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/bump", "--version"
  end
end
