# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.33.0/asc_0.33.0_macOS_arm64"
  version "0.33.0"
  sha256 "94e8eb144758f395022f8af6d8d472f36da1926e8808d382c9b3392dd1ae3894"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.33.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
