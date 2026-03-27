# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.47.0/asc_0.47.0_macOS_arm64'
  version '0.47.0'
  sha256 'e408a2e095dbbefdc8608cec4c5092eb92214927a4454c913cddee0ae5f430be'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.47.0_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
