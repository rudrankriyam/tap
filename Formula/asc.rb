# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '1.1.1'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.1.1/asc_1.1.1_macOS_arm64'
      sha256 '2a858c2a2877761b016a95a87d70f051dc6127a9c774b8284357ad34efc88009'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.1.1/asc_1.1.1_macOS_amd64'
      sha256 'eb21ebd5c73efcd8ab7cb128689777c231ace4da4ebadc97a2c4f753a54652c4'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_1.1.1_macOS_arm64' => 'asc'
    else
      bin.install 'asc_1.1.1_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
