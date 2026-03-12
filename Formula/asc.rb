# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.40.1/asc_0.40.1_macOS_arm64"
  version "0.40.1"
  sha256 "c1496db293b8a37d5469bc776ff445dd1fc68b132b5cd9830501ad8508f6dbe4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.40.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
