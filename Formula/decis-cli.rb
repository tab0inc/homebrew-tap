# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.16.1/decis-cli_1.16.1_darwin_arm64.tar.gz"
      sha256 "ed9e5927daf9b2ef061154f55933797f326394ce83a5eef66ab5d36f833810b8"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.16.1/decis-cli_1.16.1_darwin_amd64.tar.gz"
      sha256 "12fd247fb47b962087e73453425dac3c7d4ffec49678157ff0cf848b15d0bfbd"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
