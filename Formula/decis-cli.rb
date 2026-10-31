# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.21.0/decis-cli_1.21.0_darwin_arm64.tar.gz"
      sha256 "5539154be753d1f1b0d83792bea3b65b58540cf3f62dceff4137bd61a5745b5d"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.21.0/decis-cli_1.21.0_darwin_amd64.tar.gz"
      sha256 "d7b7a4952922c6611b43c44c32fe7575a532a7744c147a1e6080dbac4c688ac8"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
