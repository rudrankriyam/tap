# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '1.1.0'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.1.0/asc_1.1.0_macOS_arm64'
      sha256 'c6fde93235941f85900747b1591f798f017121fa96afab62462fd77e9d451eb3'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.1.0/asc_1.1.0_macOS_amd64'
      sha256 '06048c781382f3bb2bf19779feaa56bc770ebd4d53099fd15267abbed759c02e'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_1.1.0_macOS_arm64' => 'asc'
    else
      bin.install 'asc_1.1.0_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
