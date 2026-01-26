# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.12.4/asc-darwin-arm64"
  sha256 "52227cab34a55c8a7dd256ce2e599509fd97ed063b30ff96b57c493a46443577"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc-darwin-arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
