# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.10.0/decis-cli_1.10.0_darwin_arm64.tar.gz"
      sha256 "f0b98da97b8a356ef52a846336e90f4eab623625835c8664bf14d681ca95419b"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.10.0/decis-cli_1.10.0_darwin_amd64.tar.gz"
      sha256 "da23be32454af4a241380dc93ab7c4dbfdd8cbff3aa06265db37c512c4123b4c"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
