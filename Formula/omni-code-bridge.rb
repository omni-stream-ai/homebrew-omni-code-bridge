class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.9/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "a179518285244ddf47f996a3a69d6fde3834ff71805406d52435c3244907c4fb"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.9/omni-code-bridge-macos-x64.tar.gz"
      sha256 "278ada90578d3a2e0c5038fa6a706d70467929a7b41122744d7f448d51be1bd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.9/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "6c6cfd0c0b8b6f4a41b6de53f75d6d28e99f3f18e065b3ff303aa15f163dfa9c"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.9/omni-code-bridge-linux-x64.tar.gz"
      sha256 "7ccce735e0edabf151ea1826b3f8f2aa98626226f7e6b8fd9ef9521df9be30ff"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
