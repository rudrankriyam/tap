# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.41.2/asc_0.41.2_macOS_arm64"
  version "0.41.2"
  sha256 "78a4a2dc17e0b5134a4f281e2e8e60651f3959648668f95f7a4043445284a8c1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.41.2_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
