class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.5/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "ced57eb9956e5e92921a4800b5c177d058d3a94f8a22c0b2774164e52f3e0a9d"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.5/omni-code-bridge-macos-x64.tar.gz"
      sha256 "740ce096c9afd5b6585cfbc7ddaa29c285c47ddec234d072af0f153fcf4272ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.5/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "6f226136a244ab6154d7c0cc4c4c4148a36c23b23c586d314f8645cdb8d7b403"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.5/omni-code-bridge-linux-x64.tar.gz"
      sha256 "8c996f17cd79b0aca43e33e4224d8f874858d6821920183158c0aa93a3939795"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
