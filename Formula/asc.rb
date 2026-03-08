# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.38.0/asc_0.38.0_macOS_arm64"
  version "0.38.0"
  sha256 "d869fe7939e762fb1bfeba127375b10ae4393d83922668b4932b006ab173409b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.38.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
