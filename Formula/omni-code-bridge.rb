class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.4.0/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "8f976aa3c72fbc91bb0360ff41ee02981df0433772efd10750704594f3935852"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.4.0/omni-code-bridge-macos-x64.tar.gz"
      sha256 "06f00e3104e6ab0322f6acffa9385fdeb6ce17a3fb8f9fb2cd9df504818ec37a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.4.0/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "63a32cf352c3295d493e1f413abe219541000024dbe77d759d9b97c23f11f62d"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.4.0/omni-code-bridge-linux-x64.tar.gz"
      sha256 "025dca5519f4c2b35d643621ae54234f786dff6def81ea7ec9e764cbcc0699bd"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
