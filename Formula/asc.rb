# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.7.0/asc-darwin-arm64"
  sha256 "fa00842504a744f78a5f762250420a3ff6374cedabd634b5907432c6465623cc"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc-darwin-arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
