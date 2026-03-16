# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.44.0/asc_0.44.0_macOS_arm64'
  version '0.44.0'
  sha256 'aaf79abe115172ce922aaa4af5e8bc2461205d221e2ee6a4bd3c085db74aeb1f'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.44.0_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
