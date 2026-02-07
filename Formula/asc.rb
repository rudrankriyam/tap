# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.25.1/asc_0.25.1_macOS_arm64"
  version "0.25.1"
  sha256 "c1fd6083b800e07e6920ce5e7a781d0daaa7442e1b0041db55bdc2dcdb5643d1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "asc_0.25.1_macOS_arm64" => "asc"
  end

  test do
    assert_match "ASC is a lightweight CLI", shell_output("#{bin}/asc --help")
  end
end
