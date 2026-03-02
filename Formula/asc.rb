# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.36.1/asc_0.36.1_macOS_arm64"
  version "0.36.1"
  sha256 "dbcfdff89e386d8c5b07a06dae1f815d8aa6b3527bdc8c0e0d6de25a291138eb"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.36.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
