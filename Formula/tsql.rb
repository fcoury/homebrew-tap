class Tsql < Formula
  desc "A modern, keyboard-first PostgreSQL CLI"
  homepage "https://github.com/fcoury/tsql"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-aarch64-apple-darwin.tar.gz"
      sha256 "126feba82b34c34d515aad79a13f852a1a46b48a60046af1c0ecbcbc9772a824"
    else
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-x86_64-apple-darwin.tar.gz"
      sha256 "4b1f673615c99e0e17decf7fbfc651d1e9225d2365470029c36aa0385b46754b"
    end
  end

  on_linux do
    url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6ec7510087e206b75c838a797c0ad81639a06704bbe63d7abc1726611fed04fd"
  end

  def install
    bin.install "tsql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tsql --version")
  end
end
