# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.36.3/asc_0.36.3_macOS_arm64"
  version "0.36.3"
  sha256 "540639c580ee20910886383f70aa64da51c7c899a6e8476af1573a0124380948"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.36.3_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
