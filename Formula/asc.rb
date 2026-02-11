# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.26.4/asc_0.26.4_macOS_arm64"
  version "0.26.4"
  sha256 "91b005ba6db60f12c12a52e034d4c27e640a4c87f748b2aa322f2cd5e3635077"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.26.4_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
