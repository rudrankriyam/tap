# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.41.1/asc_0.41.1_macOS_arm64"
  version "0.41.1"
  sha256 "f6d9926ba9976c1df7c38b07ed5e51a906195db27fe97e355f6303e7d5d5c769"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.41.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
