# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.34.0/asc_0.34.0_macOS_arm64"
  version "0.34.0"
  sha256 "c143e128d7f4ef96555944a7fbec13970397e4e7a8e020b813e0f0206f226f68"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.34.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
