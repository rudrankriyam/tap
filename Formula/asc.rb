# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.41.0/asc_0.41.0_macOS_arm64"
  version "0.41.0"
  sha256 "b57f36660b564bfea658c98f43cdd49eb87506db9acf570297d479c091033d45"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.41.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
