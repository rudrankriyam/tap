# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '1.2.0'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.2.0/asc_1.2.0_macOS_arm64'
      sha256 '719e010ce1cd8ade0381b0e5567c5e44cc6006e6b38f185e93956b37f0dc9480'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.2.0/asc_1.2.0_macOS_amd64'
      sha256 'f981ce857838092f097af961d427888ca7030935d3c64b0586dccff01b72736c'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_1.2.0_macOS_arm64' => 'asc'
    else
      bin.install 'asc_1.2.0_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
