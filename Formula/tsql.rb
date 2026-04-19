class Tsql < Formula
  desc "Modern, keyboard-first PostgreSQL CLI"
  homepage "https://github.com/fcoury/tsql"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/fcoury/tsql/releases/download/v0.6.0/tsql-aarch64-apple-darwin.tar.gz"
      sha256 "11748cbdf707159be1c18e71fc770681b8172082318009df21a03cee38010b54"
    else
      url "https://github.com/fcoury/tsql/releases/download/v0.6.0/tsql-x86_64-apple-darwin.tar.gz"
      sha256 "2936191c2b07b512c68e1edc4849bfe9fb44b08f1f4f4316926e5dd5725e65d9"
    end
  elsif OS.linux?
    url "https://github.com/fcoury/tsql/releases/download/v0.6.0/tsql-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2e355fb6a6efa9b8901fdf9a6b53817ed715c9c230a9a7a2b90bfe63780de430"
  end

  def install
    bin.install "tsql"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/tsql --version")
  end
end
