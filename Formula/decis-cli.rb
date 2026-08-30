# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.9.0/decis-cli_1.9.0_darwin_arm64.tar.gz"
      sha256 "e72223a2b2aed57e0cbcca647fd8d204ee2af00c59611b25c3de3c69783302e3"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.9.0/decis-cli_1.9.0_darwin_amd64.tar.gz"
      sha256 "c1a23e57905a3239177adf2b0c49f35d793558f9de73320e9eafd25716b468ae"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
