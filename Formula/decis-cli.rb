# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.11.0/decis-cli_1.11.0_darwin_arm64.tar.gz"
      sha256 "30ac4284b2dd0d64e696cc2fc24aed404f7b7c504d18f03d03c5cb4cbb5d52e9"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.11.0/decis-cli_1.11.0_darwin_amd64.tar.gz"
      sha256 "2829cca779f98c211ffd5a90807bc8de7bf4cd5aecbd3422d13969c754d8ce68"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
