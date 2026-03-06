# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.37.1/asc_0.37.1_macOS_arm64"
  version "0.37.1"
  sha256 "743a7761097362ff2f0a905f123f20f9cd6a3aa25dbdca5fd1b2a7884fc0a467"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.37.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
