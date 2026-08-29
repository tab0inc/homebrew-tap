# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.6.0/decis-cli_1.6.0_darwin_arm64.tar.gz"
      sha256 "358da853d3cd7dd7071c787e62f8c6b25e89260d42c6cc7d44721799026ac17f"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.6.0/decis-cli_1.6.0_darwin_amd64.tar.gz"
      sha256 "6de294d971a66bc9701f33842f9d201ec50104a477a6b6e8b160c57da48fc94d"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
