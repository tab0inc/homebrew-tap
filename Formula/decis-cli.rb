# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.5.0/decis-cli_1.5.0_darwin_arm64.tar.gz"
      sha256 "a0d0b511fe543f3af45d5738bd61fafa0498f29add96e64f881b0fb1658e7e01"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.5.0/decis-cli_1.5.0_darwin_amd64.tar.gz"
      sha256 "0ad1d92aaf9cf9d376bd0161cb86177ff5baf285e09404226b716535c54f661f"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
