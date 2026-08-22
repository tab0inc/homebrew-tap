# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.3.0/decis-cli_1.3.0_darwin_arm64.tar.gz"
      sha256 "54413e90a882fe675e99d3bb3c17cffd0bb0340b5e13bcf58e627ecf4560b354"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.3.0/decis-cli_1.3.0_darwin_amd64.tar.gz"
      sha256 "f5dcf5e9a3aad0fe08f29c00e8edf3b2fe8a97fca48d0268a86c48422ad8f5cb"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
