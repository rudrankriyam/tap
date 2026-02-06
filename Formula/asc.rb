# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.24.3/asc_0.24.3_macOS_arm64"
  version "0.24.3"
  sha256 "37ba003773f77ad8c71380c8a33663441990e17b3af9a17125bcc9b29b380f4f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.24.3_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
