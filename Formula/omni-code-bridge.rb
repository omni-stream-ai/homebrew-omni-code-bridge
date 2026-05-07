class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.8/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "b42ece108e5e1a4d2604ff78f8c4562357d398d0a958e718cfbf7e0c33d26f08"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.8/omni-code-bridge-macos-x64.tar.gz"
      sha256 "a5f256eabf7bfe4001d34fe9a3b2592be3963d8cdcfca006603aae478571a9ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.8/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "55dad39ee653b905f91c206787a602f3ed1ee3cdb5eede1a0025447849f50ed8"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.8/omni-code-bridge-linux-x64.tar.gz"
      sha256 "705a154745aedc32af81dad1d6de0d460a45bd9274998022fb09dcb47d4f62b7"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
