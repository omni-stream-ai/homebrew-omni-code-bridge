class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.1/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "1400794d6fa5f54f1983d1e01303b2d56b5ea1ed23640ef5e204e9a1661e1e3a"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.1/omni-code-bridge-macos-x64.tar.gz"
      sha256 "a300a91dcfd40a328da3afeb78d99d39281bc14453deb41fba94b7fe9798251d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.1/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "80d178718d43f3aea59e8db993dd3aa57dd1c4d21a19b25efe46417ea54bef38"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.1/omni-code-bridge-linux-x64.tar.gz"
      sha256 "8e59c6ab576c427ae173355abdafe1fb7456fd1771ac4ace5979f3e05a59095b"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
