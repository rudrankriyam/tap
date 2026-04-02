# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '0.49.1'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.49.1/asc_0.49.1_macOS_arm64'
      sha256 '68d284ef4bb3b80fca16b51f582352667bf90d615deb60398968c4ade74c562f'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.49.1/asc_0.49.1_macOS_amd64'
      sha256 '1bedd666a22e4306d672ee2797ebdfd3a1ca89d4a2152b339c6c7af3aefbc7c2'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_0.49.1_macOS_arm64' => 'asc'
    else
      bin.install 'asc_0.49.1_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
