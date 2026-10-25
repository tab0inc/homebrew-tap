# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.20.0/decis-cli_1.20.0_darwin_arm64.tar.gz"
      sha256 "a8c51805344e80ac33de4f5f8f24a9968506b5caf41a1958243150b5f318813e"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.20.0/decis-cli_1.20.0_darwin_amd64.tar.gz"
      sha256 "053f41c5b0bb17ceccf49bd28067e74021ad6f5b5f05e98561d7ebeda66baebe"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
