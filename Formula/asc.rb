# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.41.3/asc_0.41.3_macOS_arm64"
  version "0.41.3"
  sha256 "325cdae9a593daf616382cfcbb15189cd521db49c169af468b327e81d3e5f817"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.41.3_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
