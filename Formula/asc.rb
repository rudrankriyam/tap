# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.36.0/asc_0.36.0_macOS_arm64"
  version "0.36.0"
  sha256 "51e7a3970319bfbcf19391acf6c86fb3e8a372178411abc7cc9dd01d70bcda9f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.36.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
