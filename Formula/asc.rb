# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.38.3/asc_0.38.3_macOS_arm64"
  version "0.38.3"
  sha256 "5ef45eefc7d4edb17ac320629e8d0bfff797c2aefd72423fd4388bb46000ae1d"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.38.3_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
