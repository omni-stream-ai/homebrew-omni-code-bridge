class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.1/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "72b4df8e95dfa3fc90a251fab419703edfd165dc4731074574763360a52c1ea8"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.1/omni-code-bridge-macos-x64.tar.gz"
      sha256 "0a0ffe292ff7321b361d3586bfcb0beb8507a74b623e5d2361d6e336073ab1f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.1/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "6080889fa48ae9ccc1010db24dce0e6290563fe699e21e8a544eed306e7598b6"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.1/omni-code-bridge-linux-x64.tar.gz"
      sha256 "5b0cae6381b8bf738d8489d6c46e8b440c54aaa65d35b2f552ea813611fc694a"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
