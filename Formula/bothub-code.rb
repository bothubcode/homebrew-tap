# typed: false
# frozen_string_literal: true

class BothubCode < Formula
  desc "BotHub Code - the AI coding agent on BotHub models"
  homepage "https://bothub.chat"
  version "1.0.3"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bothubcode/Code/releases/download/v1.0.3/bothub-code-darwin-arm64.tar.gz"
      sha256 "12775f4f8af9f8ca306224ed82b26a995d7c879339ffe03733bc7a2248781af3"
    else
      url "https://github.com/bothubcode/Code/releases/download/v1.0.3/bothub-code-darwin-x64-baseline.tar.gz"
      sha256 "4e80db54ff6c158e8d2d827b2f1e09e07d41af33f1f58f9ffe871d66de52e74a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bothubcode/Code/releases/download/v1.0.3/bothub-code-linux-arm64.tar.gz"
      sha256 "f78f6f7245afcf3161d07474c11e93c8fb22220b1f6fcdb367acb216ae913a6f"
    else
      url "https://github.com/bothubcode/Code/releases/download/v1.0.3/bothub-code-linux-x64-baseline.tar.gz"
      sha256 "c30104a3ffe62acb4e1eb97b9b72d2e8f0bddb2be0e3f35da0d18505325d8486"
    end
  end

  def install
    bin.install "bothub-code"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bothub-code --version")
  end
end
