# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.46.2/asc_0.46.2_macOS_arm64'
  version '0.46.2'
  sha256 'f98208dec3f98bbcb42c79fe8405be1acc242be15e063c73e4cf3b7c636472eb'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.46.2_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
