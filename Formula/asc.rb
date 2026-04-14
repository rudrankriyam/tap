# typed: false
# frozen_string_literal: true

class Asc < Formula
  desc "A fast, AI-agent friendly CLI for App Store Connect"
  homepage 'https://github.com/rudrankriyam/App-Store-Connect-CLI'
  version '1.2.2'
  license 'MIT'

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.2.2/asc_1.2.2_macOS_arm64'
      sha256 'a5ef2ee92760d671849d423be3206eec0a2d1a176a8f1bb61138f230b393391d'
    else
      url 'https://github.com/rudrankriyam/App-Store-Connect-CLI/releases/download/1.2.2/asc_1.2.2_macOS_amd64'
      sha256 'f417dc6b1cad0364d235883981c01e81fdfaf7a5b05ff9a010299bd026ddde0a'
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install 'asc_1.2.2_macOS_arm64' => 'asc'
    else
      bin.install 'asc_1.2.2_macOS_amd64' => 'asc'
    end
  end

  test do
    assert_match "asc is a fast, lightweight cli", shell_output("#{bin}/asc --help")
  end
end
