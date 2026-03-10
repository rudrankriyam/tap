# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.38.2/asc_0.38.2_macOS_arm64"
  version "0.38.2"
  sha256 "548b9388eec77c3d01aa00ffaeafc9ad01d040b9adcd2e1478886a21e144b8f8"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.38.2_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
