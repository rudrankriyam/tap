# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.37.0/asc_0.37.0_macOS_arm64"
  version "0.37.0"
  sha256 "68c4cfae684ae287f2a999e14f7dd12bab149a1fe3f09b15c5dce4c98405d91c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.37.0_macOS_arm64" => "asc"
  end

  test do
    assert_match "asc is a lightweight cli", shell_output("#{bin}/asc --help")
  end
end
