# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.38.1/asc_0.38.1_macOS_arm64"
  version "0.38.1"
  sha256 "928a986d9f480ecc1414582dfa47ab15f09384cd4a97839199c2b81787ca2395"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.38.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
