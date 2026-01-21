class Conduit < Formula
  desc "AI-powered terminal multiplexer for code agents"
  homepage "https://github.com/conduit-cli/conduit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/conduit-cli/conduit/releases/download/v#{version}/conduit-x86_64-apple-darwin.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_arm do
      url "https://github.com/conduit-cli/conduit/releases/download/v#{version}/conduit-aarch64-apple-darwin.tar.gz"
      sha256 "0d3bffa707d26aa67508458535503fe685cface53ea906b8b49d09e5a44ad8b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conduit-cli/conduit/releases/download/v#{version}/conduit-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0e9c4224163680443b340a90eebb760c7674050f68f611a9fa601fedc29b50d"
    end
  end

  def install
    bin.install "conduit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/conduit --version")
  end
end
