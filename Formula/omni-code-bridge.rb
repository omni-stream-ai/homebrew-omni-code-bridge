class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.7/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "c29675c8333919c6986b9f7a09579b68276eb70f4a1bf22031c92893a3703b75"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.7/omni-code-bridge-macos-x64.tar.gz"
      sha256 "f7216f3185daffa948787b057cf75e21bf4d5150ebbe41d92cfd9d7051ffb35d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.7/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "9fae857dd94913ac630c9ecd77f27334024658ac74220d6ac06191faf9cd800a"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.7/omni-code-bridge-linux-x64.tar.gz"
      sha256 "b48a1958bc135e604f9e058aa6050bed0be7d6f11a076bab52f0e01d7bac1781"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
