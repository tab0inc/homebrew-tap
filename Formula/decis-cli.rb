# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.4.1/decis-cli_1.4.1_darwin_arm64.tar.gz"
      sha256 "7d200fbac5c35f629c344c29dc291d1b6af49c47f778d300cfb5882fe3bcf6f9"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.4.1/decis-cli_1.4.1_darwin_amd64.tar.gz"
      sha256 "7db6ad8d789e7f214e08f7adc0f30ed2811a07fef6c9ec541818942f210b2c47"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
