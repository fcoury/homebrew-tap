class Purgee < Formula
  desc "Terminal UI for finding and removing Rust target directories"
  homepage "https://github.com/fcoury/purgee"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/fcoury/purgee/releases/download/v0.1.0/purgee-aarch64-apple-darwin.tar.gz"
      sha256 "1e8def1460bad0bc7ffa24e6a89b76e5cb11d72fa465cca31558edcbc164c9b7"
    else
      url "https://github.com/fcoury/purgee/releases/download/v0.1.0/purgee-x86_64-apple-darwin.tar.gz"
      sha256 "da75dccf0f61f05e546411ac15dd1cff593b2b235dcccbd593fc479f1d713c11"
    end
  elsif OS.linux?
    url "https://github.com/fcoury/purgee/releases/download/v0.1.0/purgee-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d6d8906233632bd2f1af4d5455ab3d2e412c22ccf17f35d4b01560775774b7bb"
  end

  def install
    bin.install "purgee"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/purgee --version")
  end
end
