# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.45.4/asc_0.45.4_macOS_arm64'
  version '0.45.4'
  sha256 '8a18227700ed3651e9e0524e062584f147c806bd4fc4147e3ec709eb7491df3c'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.45.4_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
