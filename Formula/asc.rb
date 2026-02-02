class Asc < Formula
  desc "Fast, AI-agent friendly CLI for App Store Connect"
  homepage "https://github.com/rudrankriyam/App-Store-Connect-CLI"
  url "https://github.com/rudrankriyam/App-Store-Connect-CLI/archive/refs/tags/0.23.4.tar.gz"
  sha256 "42fe548be44e39004d7cc4649fba7dd7d22c49766e438ff3dd513431a0dc8609"
  license "MIT"
  head "https://github.com/rudrankriyam/App-Store-Connect-CLI.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=#{tap.user}
      -X main.date=#{time.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    assert_match "CLI for App Store Connect", shell_output("#{bin}/asc --help 2>&1")
    assert_match version.to_s, shell_output("#{bin}/asc version")
  end
end
