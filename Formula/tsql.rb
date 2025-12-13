class Tsql < Formula
  desc "A modern, keyboard-first PostgreSQL CLI"
  homepage "https://github.com/fcoury/tsql"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-aarch64-apple-darwin.tar.gz"
      sha256 "73f481d2dcfef6a1acaedd732442dbc43508502bb098e36cce7e5240b43fb7f9"
    else
      url "https://github.com/fcoury/tsql/releases/download/v#{version}/tsql-x86_64-apple-darwin.tar.gz"
      sha256 "4df6d488cfbec41787998373ec9964b4fc4b032ddabe8d33c68691f4d024d2cf"
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
