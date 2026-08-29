# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.7.0/decis-cli_1.7.0_darwin_arm64.tar.gz"
      sha256 "95c6e985815bca614199cd9e9453035ae7b235217adfa01684f284376abc044f"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.7.0/decis-cli_1.7.0_darwin_amd64.tar.gz"
      sha256 "fa90b41167d66784073d9f5628f04fa551455cf9d8789c5f7633a04e6eab5808"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
