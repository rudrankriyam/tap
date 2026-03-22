# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.45.2/asc_0.45.2_macOS_arm64'
  version '0.45.2'
  sha256 'e0246ab232d14db3e696489bd6288d33b1219bf06c6c3faaf6ce9dbbb2293ca0'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.45.2_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
