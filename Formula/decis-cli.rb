# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.17.1/decis-cli_1.17.1_darwin_arm64.tar.gz"
      sha256 "77dbf5315aa13ed951477544b1a0426cd3ce73c2d64d7b01823f7df08f9b35f8"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.17.1/decis-cli_1.17.1_darwin_amd64.tar.gz"
      sha256 "0868bde7621943eafbcab54d280f963cfc405b71fac8be0b76bd0903761f3791"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
