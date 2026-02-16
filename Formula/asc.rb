# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.9/asc_0.28.9_macOS_arm64"
  version "0.28.9"
  sha256 "c9a2b9f2e7dcb835add16467077bf99cc22fd7366819830fc8148a3dcb676204"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.9_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
