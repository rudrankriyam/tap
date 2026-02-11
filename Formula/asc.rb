# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.26.4/asc_0.26.4_macOS_arm64"
  version "0.26.4"
  sha256 "63b2de11cf11d8ae286504634b8c3a87eea5b8871437e7f06b35b1e81df2cedb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.26.4_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
