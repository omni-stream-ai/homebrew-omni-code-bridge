class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.6.0/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "21ca5c4098883209514ce50268c4006708e2fcd6edeae0330f22791f5a7f2ef9"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.6.0/omni-code-bridge-macos-x64.tar.gz"
      sha256 "6e92f196830f6cecbd1e6d5d7fd1d824228a0526f8db9b6273639a51b87bbc7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.6.0/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "ce860a53d4798bf274ad3072e8725ccaee74d4131e661682253f90f18f45e1ec"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.6.0/omni-code-bridge-linux-x64.tar.gz"
      sha256 "135bad1196dd22c3e4560167c0eacf2094dc5c3b1fb69150f5e84e16da3bac26"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
