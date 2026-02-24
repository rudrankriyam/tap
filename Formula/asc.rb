# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.33.1/asc_0.33.1_macOS_arm64"
  version "0.33.1"
  sha256 "2c18ad42580951fe6c419ba0ccc547a6f76f1aecacbe62b5e8f8967b325b11e7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.33.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
