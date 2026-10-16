class Taifoon < Formula
  desc "The Taifoon coordination layer in the terminal: every command is a /v1 call; it never holds a private key"
  homepage "https://www.taifoon.io/download"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taifoon-io/cli/releases/download/v0.3.2/taifoon-cli-0.3.2-darwin-arm64.tar.gz"
      sha256 "c472896fcf7abd35bd9bbeff2b7e94eee398bf824e49cb9921d82f7b02109761"
    end
    on_intel do
      url "https://github.com/taifoon-io/cli/releases/download/v0.3.2/taifoon-cli-0.3.2-darwin-x64.tar.gz"
      sha256 "3c24abe9a32c438d329f39db7f43dcefe84e750bb109a4cf5eebfba01e0974f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/taifoon-io/cli/releases/download/v0.3.2/taifoon-cli-0.3.2-linux-arm64.tar.gz"
      sha256 "da4d129a5a4066e700e7f3eb20683660da5abd9f99d2ce92a91794ffabb12525"
    end
    on_intel do
      url "https://github.com/taifoon-io/cli/releases/download/v0.3.2/taifoon-cli-0.3.2-linux-x64.tar.gz"
      sha256 "280d105ffc6b1accf9f23ed0e290728d60d7dbf8a5c1c405aea6226d6b154357"
    end
  end

  def install
    bin.install "taifoon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taifoon --version")
  end
end
