# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.29.1/asc_0.29.1_macOS_arm64"
  version "0.29.1"
  sha256 "914c3e34dcaedf02dfdfc28f52d4b1656a3b4ef114581abaeadb5c1a4d0a9aa0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.29.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
