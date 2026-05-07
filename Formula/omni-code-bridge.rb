class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.6/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "9dd3c1158cb1fdf97348c0b58bc2d062bdf1dd7fd93671ba85a61dff52dcf4c9"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.6/omni-code-bridge-macos-x64.tar.gz"
      sha256 "5e6bc717eec509e707d4b408c16d87a69686e5022b055b35dbf0a88da8ab3c02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.6/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "4e7a8e33067cadd88d8fadf2aa2eef15361c18273a43690452b5d064fa3f3afd"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.1.6/omni-code-bridge-linux-x64.tar.gz"
      sha256 "34247a685364aa43cead784a839f53f94531da78889222c70cc2712e321f2724"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
