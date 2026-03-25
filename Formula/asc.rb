# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.46.0/asc_0.46.0_macOS_arm64'
  version '0.46.0'
  sha256 '5f849b6cb478d58a6bd55a522eaaeecc40c81296019378f81eb0e894b82ceeac'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.46.0_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
