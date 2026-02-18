# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.28.14/asc_0.28.14_macOS_arm64"
  version "0.28.14"
  sha256 "37803d48ef3ca7b6c1063734173633175873133c2270a58f9d056b85e8e20844"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.28.14_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
