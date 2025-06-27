class Dvom < Formula
  desc "DVOM tool"
  homepage "https://github.com/ypeckstadt/dvom"
  url "https://github.com/ypeckstadt/dvom/archive/v0.2.4.tar.gz"
  sha256 "3e4c14093b77fa6f96cd76c6ab605b8e811868ece240fb0444ad5a4d20a57598"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/dvom", "--version"
  end
end
