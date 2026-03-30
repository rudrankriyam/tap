# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '0.48.0'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.48.0/asc_0.48.0_macOS_arm64'
      sha256 'cdc60fd6461ed484f693aa76cdd692a6fbe3c679b0e44bd9bc3d857bd51c544c'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.48.0/asc_0.48.0_macOS_amd64'
      sha256 '51d95346bf4f7908da95d8c2d61d657487ea35aafe84b43b0330cbb2a56a88bc'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_0.48.0_macOS_arm64' => 'asc'
    else
      bin.install 'asc_0.48.0_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
