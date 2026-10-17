# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.18.1/decis-cli_1.18.1_darwin_arm64.tar.gz"
      sha256 "11e2c8d519981270cc37bcf1c02bc08203a7072db47be25569e6b55aa4d42047"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.18.1/decis-cli_1.18.1_darwin_amd64.tar.gz"
      sha256 "636ab77fd491f417d5f4518431a19848385136bf835ab5e020a808e08c68c335"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
