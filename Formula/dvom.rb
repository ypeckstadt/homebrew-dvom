class Dvom < Formula
  desc "DVOM tool"
  homepage "https://github.com/ypeckstadt/dvom"
  url "https://github.com/ypeckstadt/dvom/archive/v0.2.2.tar.gz"
  sha256 "de4b6e898acc8b7a28869aa6142c2ae6266413c45af1eec838974a7f98eb386e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/dvom", "--version"
  end
end
