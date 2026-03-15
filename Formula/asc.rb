# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.43.0/asc_0.43.0_macOS_arm64'
  version '0.43.0'
  sha256 'e71bb4a06764d964f8e06ef98928aa20e816b787a704e1e28e5b35993e49a389'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.43.0_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
