# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.14.0/asc-darwin-arm64"
  sha256 "254da3108c32c87f895bbdd6d5eb265003a519e82663ee4d476e83d6c491f4cf"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc-darwin-arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
