# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.14.0/decis-cli_1.14.0_darwin_arm64.tar.gz"
      sha256 "bdf5cb5269b48d6e63316e3c6e1a5552f6f18dc0187613e70c873c8d2d8820ee"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.14.0/decis-cli_1.14.0_darwin_amd64.tar.gz"
      sha256 "e9ed7493b2cfbde9e361b12e344d5a6dd0575fb5c1e187133c98afdf088d15fb"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
