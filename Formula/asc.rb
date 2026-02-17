# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.12/asc_0.28.12_macOS_arm64"
  version "0.28.12"
  sha256 "3dec9f394cf6987ba4a5827d4f1634147baa5ee533934b8df9a921000aff05f5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.12_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
