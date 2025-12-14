class Tsql < Formula
  desc "A modern, keyboard-first PostgreSQL CLI"
  homepage "https://github.com/fcoury/tsql"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-aarch64-apple-darwin.tar.gz"
      sha256 "89dcf7e41505b5e28e4e16010b8d45440dce498f510edb1f652956f71eb13165"
    else
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-x86_64-apple-darwin.tar.gz"
      sha256 "6a08d9f6886a4683ea1020bbe65130aff091a240f1a5bc774e66f6b829193dcb"
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
