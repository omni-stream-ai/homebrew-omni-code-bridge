class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.2/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "bc0fe413adcc42f4df227daf27b7992c8e10ac4254358c206f88ff29eae9d66e"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.2/omni-code-bridge-macos-x64.tar.gz"
      sha256 "fb6b7e856cd37134997d82a854c07a7125e89a6abb698ec28b095d02d1713833"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.2/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "7591acad64cc96be7a9395d58d4d9fa83eb43cb8b4be2417b0265e40256c3d30"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.2/omni-code-bridge-linux-x64.tar.gz"
      sha256 "03b5c64dd38665cb9b527db376fbf570096287b06cc8d03dac10b2a1963ad7ca"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
