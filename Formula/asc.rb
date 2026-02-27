# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.35.2/asc_0.35.2_macOS_arm64"
  version "0.35.2"
  sha256 "f13bc492a3d35a283f3705e3c6d07bfa722652ec802fd4d8f7a76c64aed1c79a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.35.2_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
