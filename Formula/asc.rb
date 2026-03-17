# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.44.1/asc_0.44.1_macOS_arm64'
  version '0.44.1'
  sha256 '27de8190c1b27dd4540bfd7d7b1420ff8f2afc4540e790e47f5486771fbc4f92'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.44.1_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
