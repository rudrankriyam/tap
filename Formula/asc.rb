# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.25.3/asc_0.25.3_macOS_arm64"
  version "0.25.3"
  sha256 "ddc60a09171feeef2b7fb6ab4e2cfb1e135f4253f1bad6c5315b9a26562c91c1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.25.3_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
