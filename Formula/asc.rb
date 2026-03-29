# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '0.47.1'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.47.1/asc_0.47.1_macOS_arm64'
      sha256 'd55086ecfc412c9f1bdbf516a24742c219cfb6457ae6ae369616e98e72b95b17'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.47.1/asc_0.47.1_macOS_amd64'
      sha256 '1712d5a935f4eacceff3300f80d8df8a72964bb568f072b02aa516470c87ffe7'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_0.47.1_macOS_arm64' => 'asc'
    else
      bin.install 'asc_0.47.1_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
