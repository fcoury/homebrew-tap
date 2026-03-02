class Tsql < Formula
  desc "Modern, keyboard-first PostgreSQL CLI"
  homepage "https://github.com/fcoury/tsql"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/fcoury/tsql/releases/download/v0.5.0/tsql-aarch64-apple-darwin.tar.gz"
      sha256 "9670201266f970ef14b12aaa626b7051de800b6ca9685c51d6e1463e94940eac"
    else
      url "https://github.com/fcoury/tsql/releases/download/v0.5.0/tsql-x86_64-apple-darwin.tar.gz"
      sha256 "21bb964bab3f262d4fd3d4e567402546a65a4c03eff65298a2f06d9035ddf8f8"
    end
  elsif OS.linux?
    url "https://github.com/fcoury/tsql/releases/download/v0.5.0/tsql-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "64f6f78946a71fcc3c5adce8d86a6adfab069de1346b98688309a8e3bd4f2a87"
  end

  def install
    bin.install "tsql"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/tsql --version")
  end
end
