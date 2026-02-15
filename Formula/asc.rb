# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.4/asc_0.28.4_macOS_arm64"
  version "0.28.4"
  sha256 "f8df993c2a3afb91978974f171c51269aa89376b621f65bd857d291c3892bb46"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.4_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
