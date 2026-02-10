# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.26.1/asc_0.26.1_macOS_arm64"
  version "0.26.1"
  sha256 "43ef4a9e6c070b5f2f5e9594eb65016cc7c28a70c8990409335220b9e00e94e6"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.26.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
