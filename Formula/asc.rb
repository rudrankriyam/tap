# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.46.1/asc_0.46.1_macOS_arm64'
  version '0.46.1'
  sha256 '2e9b3d7d5659a3a62a46acf640926cb03546d67004e775ad3e531525b28d8b57'
  license 'MIT'

  depends_on :macos

  def install
    bin.install 'asc_0.46.1_macOS_arm64' => 'asc'
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
