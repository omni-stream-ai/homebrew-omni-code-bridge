class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.3.1/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "bb8945f34c2b6bf44d37c8cd0dce13ce079e085ad248952c4ee9c7e3cc958114"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.3.1/omni-code-bridge-macos-x64.tar.gz"
      sha256 "45361cb854e66a27bfdb77837be702c77223054afd92b1f3fc6a916a48c8378d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.3.1/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "fd0aa5bf462e5527ae0ea0cca38ab021103d667e08693826da9655601d298981"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.3.1/omni-code-bridge-linux-x64.tar.gz"
      sha256 "aa7939db968283f67a7d8e5c1782896740dc70591419806d5e3a0d489874cd5d"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
