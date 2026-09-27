# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.16.0/decis-cli_1.16.0_darwin_arm64.tar.gz"
      sha256 "11b5d82a5829a9c11f93f029a2deb665cd0e483500669d7a729dd5f75ee2e960"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.16.0/decis-cli_1.16.0_darwin_amd64.tar.gz"
      sha256 "4b98ce0aca716612327b58e89122b6e30f86dee582b168aec838f22d52cee0c3"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
