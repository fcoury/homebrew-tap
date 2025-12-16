class Tsql < Formula
  desc "A modern, keyboard-first PostgreSQL CLI"
  homepage "https://github.com/fcoury/tsql"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-aarch64-apple-darwin.tar.gz"
      sha256 "1a86729e8562a848b548ca75d331be7409e4c35dc595b00fae74dee4b7e54d5d"
    else
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-x86_64-apple-darwin.tar.gz"
      sha256 "00d6e33cd830e5017a998fa3b7263361098dffc6ec9fb76e4727588ccb7eed0d"
    end
  end

  on_linux do
    url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6e779d7c95adb65983811746d196eea8d3ce26041fecb0809d568e51c5a41f42"
  end

  def install
    bin.install "tsql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tsql --version")
  end
end
