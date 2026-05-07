class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.3/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "65d80f7f4a477191a8b4c066bc1dac4d54087bf869043b11b1c3796b3f715918"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.3/omni-code-bridge-macos-x64.tar.gz"
      sha256 "613c2e4d4899801a6d33981e1fa5da631bb22cbb0d8e5038c19df5ffc4476df9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.3/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "78022cdf0b210b128932e9591c39c7c179eb78651cf1c4b08e85f4dacb898600"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.3/omni-code-bridge-linux-x64.tar.gz"
      sha256 "e21ec96c2233a891f389454a1973e0d9f89e9d4f3ca6f3fa0005bdbe7c0617fc"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
