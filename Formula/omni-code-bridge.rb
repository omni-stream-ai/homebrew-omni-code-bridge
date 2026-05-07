class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.4/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "be492501adf749f49ac400d7b66d0acb147bed1ce04b1af54c3ae65f1e6377ba"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.4/omni-code-bridge-macos-x64.tar.gz"
      sha256 "9cf1bc05a307adaf72b23ab8b7123689d7130e9001bc3d3f2ca3b9aab5060060"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.4/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "d1169ad5a5b497d28e587e9eb96b027e55a9573cf96afffbe9fc6f5cdbd54a71"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.4/omni-code-bridge-linux-x64.tar.gz"
      sha256 "291c1d8cbf4e4adc31ddba03e3e0263b3c4d0cb9de8fbe6cafe639f110dd88a0"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
