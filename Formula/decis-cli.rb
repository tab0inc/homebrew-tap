# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.8.0/decis-cli_1.8.0_darwin_arm64.tar.gz"
      sha256 "914c7c211a0cbb66185b0bd5ec7f710d06e272ebfe3b14f7677599f7b53a79b3"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.8.0/decis-cli_1.8.0_darwin_amd64.tar.gz"
      sha256 "695261c99d2b56156d3ba128914244a46f648ccb10e6d877c56425ecb612b00e"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
