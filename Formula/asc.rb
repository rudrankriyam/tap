# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.45.1/asc_0.45.1_macOS_arm64'
  version '0.45.1'
  sha256 'db6ff657d18d0c087f2af1f6070fd88124f378fc5c2fc5929a0fd321da76ae1d'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.45.1_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
