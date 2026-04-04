# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '1.0.1'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.0.1/asc_1.0.1_macOS_arm64'
      sha256 '05ee04a12788ce70407e49f6a774ac5f271fb61e0e230b8c2bf042140029c691'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.0.1/asc_1.0.1_macOS_amd64'
      sha256 'b3a63a59a15f0dd5cf2b8519729a020c1dcc693d58fe01b06670e4e49c182945'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_1.0.1_macOS_arm64' => 'asc'
    else
      bin.install 'asc_1.0.1_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
