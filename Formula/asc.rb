# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.44.2/asc_0.44.2_macOS_arm64'
  version '0.44.2'
  sha256 '2d6fcbdb14932f20cb33906e369b0d86b899a0b8ec7f258080c0fe29c3c18e87'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.44.2_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
