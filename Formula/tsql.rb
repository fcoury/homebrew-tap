class Tsql < Formula
  desc "A modern, keyboard-first PostgreSQL CLI"
  homepage "https://github.com/fcoury/tsql"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-aarch64-apple-darwin.tar.gz"
      sha256 "2d5fb839b878d3f57e7af213a41883b87c5b1ca5fa61d4097dd88c56f9a88018"
    else
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-x86_64-apple-darwin.tar.gz"
      sha256 "e6fb6b5556c5e3358514ca626559047e95b1995df3302857bfe5c72ba497a6fe"
    end
  end

  on_linux do
    url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "054d3272ff8b43b79944333c59f5e3028fc35340572c048a554518db56637ae6"
  end

  def install
    bin.install "tsql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tsql --version")
  end
end
