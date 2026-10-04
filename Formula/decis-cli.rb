# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.18.0/decis-cli_1.18.0_darwin_arm64.tar.gz"
      sha256 "94a5443645c580426b2d7f649ece66a524472354fb5b854dbd4369f99ce56352"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.18.0/decis-cli_1.18.0_darwin_amd64.tar.gz"
      sha256 "99cc438815b93ace50381c884eaa265cc43bb69a2e2e350bcd6303f8012d52df"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
