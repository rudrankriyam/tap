# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '0.48.1'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.48.1/asc_0.48.1_macOS_arm64'
      sha256 '08997747e35ac9773aa4b22f6e3cd3d2c04033bd86d723af33b2d535ff220c1f'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.48.1/asc_0.48.1_macOS_amd64'
      sha256 'a8ec4f23689f85ea9e44531a675c7d4bb2ff9af75a84d5e95a3d9ce8f3296096'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_0.48.1_macOS_arm64' => 'asc'
    else
      bin.install 'asc_0.48.1_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
