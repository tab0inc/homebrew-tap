# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.3.1/decis-cli_1.3.1_darwin_arm64.tar.gz"
      sha256 "14840a548ef175e3127019df35c4394f0e56c7af259bac837411aafa44a1689a"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.3.1/decis-cli_1.3.1_darwin_amd64.tar.gz"
      sha256 "2cc2a2d6eacb789d85295ce7ee7db65940b3ef02b288d95f5c1fbd4e1054dbce"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
