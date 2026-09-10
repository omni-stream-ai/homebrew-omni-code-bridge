class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.7.1/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "a4ef0193d8b966d96b4bc8ff0c7195dc1f39f16c2ba973939b1710beab3a426e"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.7.1/omni-code-bridge-macos-x64.tar.gz"
      sha256 "1bf28d0a73fa056182a76844ef5b07d915298dc8961e0966c07bfbabe38f6e60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.7.1/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "c22338170ca043958eb49aa5cba04a0456479579d30fb99b8cc4b5c1dd11067f"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.7.1/omni-code-bridge-linux-x64.tar.gz"
      sha256 "a0ced2381daf6e8ac4397eaa0f538a92ec1783fe144ef494afcb6d429a76021e"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
