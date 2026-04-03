# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '1.0.0'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.0.0/asc_1.0.0_macOS_arm64'
      sha256 '87aed08ed51b3078315b662de6d164df7219fdb1d4a94ecd17c54543db162c81'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.0.0/asc_1.0.0_macOS_amd64'
      sha256 'b6e23639db9dc61b784079518a2b69e62b3a8cbdab7537f40a47deb5d8871ad0'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_1.0.0_macOS_arm64' => 'asc'
    else
      bin.install 'asc_1.0.0_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
