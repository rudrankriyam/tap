# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.45.0/asc_0.45.0_macOS_arm64'
  version '0.45.0'
  sha256 '0c2b474e5153e788411bfa073aa4d26cc6a7c59d81e0b72dc3ea3789b4a665c2'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.45.0_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
