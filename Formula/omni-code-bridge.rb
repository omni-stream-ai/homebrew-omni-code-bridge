class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.2.0/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "6baec8d0332c96a2cf2143c3afe270df58885fb3b444597c34b93ae9e63711fe"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.2.0/omni-code-bridge-macos-x64.tar.gz"
      sha256 "2bdb9e9c70d3ee23a83076b5ebb7270ed35e98476aae5c97df085667ba44d423"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.2.0/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "538c70b6684b0599a197f8e2eb43638d818a721ea2e1ec73043ea89bddf46674"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.2.0/omni-code-bridge-linux-x64.tar.gz"
      sha256 "8e99b6c43bcc1046d9f578cb2be21a37bccec00a10d1681f4ea1a7e985a267d1"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
