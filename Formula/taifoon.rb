class Taifoon < Formula
  desc "The Taifoon coordination layer in the terminal: every command is a /v1 call; it never holds a private key"
  homepage "https://www.taifoon.io/download"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taifoon-io/cli/releases/download/v0.3.0/taifoon-cli-0.3.0-darwin-arm64.tar.gz"
      sha256 "8fd03bbf27d25067eb513cab2c6501d3158d659f02f2d6476dc4aa3b00e72002"
    end
    on_intel do
      url "https://github.com/taifoon-io/cli/releases/download/v0.3.0/taifoon-cli-0.3.0-darwin-x64.tar.gz"
      sha256 "d309430f70b6a426a7dc0804cf9cd9ed884a387c12090264e3615f100e9adc63"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/taifoon-io/cli/releases/download/v0.3.0/taifoon-cli-0.3.0-linux-arm64.tar.gz"
      sha256 "648010457ded9988ca4c304eb9448cc973a5d760d36809e91e865ee3a546791b"
    end
    on_intel do
      url "https://github.com/taifoon-io/cli/releases/download/v0.3.0/taifoon-cli-0.3.0-linux-x64.tar.gz"
      sha256 "b21d4c2e4e1920b309010bac8b922b9459ba5d4409292963f7c7247c2368d89c"
    end
  end

  def install
    bin.install "taifoon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taifoon --version")
  end
end
