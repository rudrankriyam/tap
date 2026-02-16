# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.7/asc_0.28.7_macOS_arm64"
  version "0.28.7"
  sha256 "cc24859c1a9fcc38c9baeb6dcade639dd963ed09d6ad896a51193c60723cd06b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.7_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
