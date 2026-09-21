# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.15.0/decis-cli_1.15.0_darwin_arm64.tar.gz"
      sha256 "6e11aac8121a3b4374566309fec1a16c7784d6baad88d95385a07f05c998e589"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.15.0/decis-cli_1.15.0_darwin_amd64.tar.gz"
      sha256 "c10d97706a106a642a195f2e0e7bf88d7107d71b6fbb20a603ca4652f7ec4e3e"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
