# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.1/asc_0.28.1_macOS_arm64"
  version "0.28.1"
  sha256 "578a6a4a552a771d66bfbcc7688bb593fda4078d297e4b3d47b6be54df4b9cff"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
