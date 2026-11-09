# typed: false
# frozen_string_literal: true

class BothubCode < Formula
  desc "BotHub Code - the AI coding agent on BotHub models"
  homepage "https://bothub.chat"
  version "1.0.2"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bothubcode/Code/releases/download/v1.0.2/bothub-code-darwin-arm64.tar.gz"
      sha256 "f60fe98d1f1567883081efbd0e1daecc971e1543918a8d723dc943725045f07e"
    else
      url "https://github.com/bothubcode/Code/releases/download/v1.0.2/bothub-code-darwin-x64-baseline.tar.gz"
      sha256 "69d202e06b3a3d14daf6cfecd54f2adbdf5a88eb81d33fab0fe73b1a61c892fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bothubcode/Code/releases/download/v1.0.2/bothub-code-linux-arm64.tar.gz"
      sha256 "841e2871f0c190dd2c30125751eb2e51e07a3f44e6b86c199c94ab5f2e6047d3"
    else
      url "https://github.com/bothubcode/Code/releases/download/v1.0.2/bothub-code-linux-x64-baseline.tar.gz"
      sha256 "66a562734750b78eb5f6ae68385d77a74cb09baf44c8d98f040165c68a57549c"
    end
  end

  def install
    bin.install "bothub-code"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bothub-code --version")
  end
end
