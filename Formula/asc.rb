# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.2/asc_0.28.2_macOS_arm64"
  version "0.28.2"
  sha256 "3dc9f484af892753a0263546642a5beadad086f70406399143c41c4c79605dee"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.2_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
