# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.45.3/asc_0.45.3_macOS_arm64'
  version '0.45.3'
  sha256 '343b17af369a5f72f4b160d62cd9057884c5d57beb03ef6e0249e82368e48815'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.45.3_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
