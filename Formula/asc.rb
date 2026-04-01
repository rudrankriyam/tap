# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '0.49.0'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.49.0/asc_0.49.0_macOS_arm64'
      sha256 'e3a6cf7218ad09e8fa265a123babb07d5f1d82ce1fc2919234dfaa772e812b1d'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/0.49.0/asc_0.49.0_macOS_amd64'
      sha256 'c1117d2f685b4663b6250dfd2d41ca68198bf8f7a9a9a81b1f22a6396fe785d7'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_0.49.0_macOS_arm64' => 'asc'
    else
      bin.install 'asc_0.49.0_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
