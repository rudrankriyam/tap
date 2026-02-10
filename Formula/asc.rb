# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.26.2/asc_0.26.2_macOS_arm64"
  version "0.26.2"
  sha256 "1d8d1c0a1be9363292d66eaf28b71ec2c0d8eb3353b12e1e92a8abc07d0d6bb7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.26.2_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
