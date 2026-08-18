# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.1.0/decis-cli_1.1.0_darwin_arm64.tar.gz"
      sha256 "d7858aaea651c821edc42a2d479ea1d28600c559d840b59134125fd498547d94"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.1.0/decis-cli_1.1.0_darwin_amd64.tar.gz"
      sha256 "890cbf3301076cc9c11cc19bde9fdbbe930e959577658a9a68fceac663850577"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
