# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.35.0/asc_0.35.0_macOS_arm64"
  version "0.35.0"
  sha256 "143f126e00f5bb3fa3b32b30e20b98f76309527d607e854847165347e7623217"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.35.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
