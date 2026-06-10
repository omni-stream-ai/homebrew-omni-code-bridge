class OmniCodeBridge < Formula
  desc "Rust bridge for Omni Code — connects mobile clients to local coding agents"
  homepage "https://github.com/omni-stream-ai/omni-code-bridge"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.5.0/omni-code-bridge-macos-arm64.tar.gz"
      sha256 "fc790240b5dbd199ebd1d9b877903f3e9654cab0dfaea0d220cdf58ad236daf9"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.5.0/omni-code-bridge-macos-x64.tar.gz"
      sha256 "40eb253000250230ae8be40fe523b5f919e54a2144d24e641c88bb141279d9bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.5.0/omni-code-bridge-linux-arm64.tar.gz"
      sha256 "d7c051e581896c9217b3a5e7b346e317cb42b8397cc0fea4da16d59d37dd666c"
    end

    on_intel do
      url "https://github.com/omni-stream-ai/omni-code-bridge/releases/download/v0.5.0/omni-code-bridge-linux-x64.tar.gz"
      sha256 "0654ea26951e2518002a3dbbbba4ecc2cf08e57d78399b47ce73ff2e7a3d6f2f"
    end
  end

  def install
    bin.install "omni-code-bridge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omni-code-bridge --version")
  end
end
