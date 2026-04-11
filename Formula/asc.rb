# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '1.2.1'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.2.1/asc_1.2.1_macOS_arm64'
      sha256 '92b7461c4af73848f31ab25c35ab118c2aef0904ffcc8de69280ce2ce7aa25b1'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.2.1/asc_1.2.1_macOS_amd64'
      sha256 '3129159f0736bd6bea9b198ff7c137b4a3c7b26a534730a28e61041594905300'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_1.2.1_macOS_arm64' => 'asc'
    else
      bin.install 'asc_1.2.1_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
