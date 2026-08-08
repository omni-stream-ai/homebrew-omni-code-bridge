class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.7.0/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "b43c2f722e2fa7c09b05ceaf57b813fb907808e9ebc4d79f8fb75de50bb187bb"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.7.0/omni-code-bridge-macos-x64.tar.gz"
      sha256 "c019f53acf9aec3a869a693da2ca8c927ed4ca776d4215b53baf4f412a9dc38f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.7.0/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "c76e2576cfa35d9fb293bac521d5bd473d369afdfb44300dc296ed255a8fb0e1"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.7.0/omni-code-bridge-linux-x64.tar.gz"
      sha256 "3d51a7956bf0ade7d38f1a88ff35bf25ddcb989dcc4ed5f260a397d2b49522cd"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
