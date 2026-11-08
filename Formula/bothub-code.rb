# typed: false
# frozen_string_literal: true

class BothubCode < Formula
  desc "BotHub Code - the AI coding agent on BotHub models"
  homepage "https://bothub.chat"
  version "1.0.1"
  license "MIT"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bothubcode/Code/releases/download/v1.0.1/bothub-code-darwin-arm64.tar.gz"
      sha256 "77b20e8337bdedd2512d2923dac1db1ede84a9f8d1c76ee5b52a5fb3843edbfc"
    else
      url "https://github.com/bothubcode/Code/releases/download/v1.0.1/bothub-code-darwin-x64-baseline.tar.gz"
      sha256 "be31003487fdab389957da265ddcfef307bb1a27be01056fd6cf3477ceae0a24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bothubcode/Code/releases/download/v1.0.1/bothub-code-linux-arm64.tar.gz"
      sha256 "78d80169b8ee493df6cd83f0ba13ab654315ea5a3030c8d955595827dbe06656"
    else
      url "https://github.com/bothubcode/Code/releases/download/v1.0.1/bothub-code-linux-x64-baseline.tar.gz"
      sha256 "87aea433939b0dffc9e871f2d917bb37b0e3702b13d38fbfe829040e9d099fe5"
    end
  end

  def install
    bin.install "bothub-code"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bothub-code --version")
  end
end
