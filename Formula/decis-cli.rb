# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.13.0/decis-cli_1.13.0_darwin_arm64.tar.gz"
      sha256 "95c4a9b65b8eed7d93433c4241cd3a3605758e5f86984033f261a439d3a3d1a4"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.13.0/decis-cli_1.13.0_darwin_amd64.tar.gz"
      sha256 "3ae67a2962baad8520c0fd097b2c65ec34a32d0f1e2771870b551d2b36744175"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
