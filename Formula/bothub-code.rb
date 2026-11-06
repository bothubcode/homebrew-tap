# typed: false
# frozen_string_literal: true

class BothubCode < Formula
  desc "BotHub Code - the AI coding agent on BotHub models"
  homepage "https://bothub.chat"
  version "1.0.0"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bothubcode/Code/releases/download/v1.0.0/bothub-code-darwin-arm64.tar.gz"
      sha256 "1a8b66d25bd00307bf9fde2d111afc4ed12350092622634e67e20aa7c54abbad"
    else
      url "https://github.com/bothubcode/Code/releases/download/v1.0.0/bothub-code-darwin-x64-baseline.tar.gz"
      sha256 "a118c482a6d44f60ddae5c61211b4b0238ea9a2d1e8f998d3a0123384b681a1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bothubcode/Code/releases/download/v1.0.0/bothub-code-linux-arm64.tar.gz"
      sha256 "f1fb1af7c0b873f0d6341784019a5208a3763394d8aecab40484f3fe01c5c4eb"
    else
      url "https://github.com/bothubcode/Code/releases/download/v1.0.0/bothub-code-linux-x64-baseline.tar.gz"
      sha256 "898e93e197c0fe97da3c96b121c1d8f3290afda76c2bb5de9068639a31326aa9"
    end
  end

  def install
    bin.install "bothub-code"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bothub-code --version")
  end
end
