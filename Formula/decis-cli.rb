# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.12.0/decis-cli_1.12.0_darwin_arm64.tar.gz"
      sha256 "71968a1c81b3a43ff9675e4fc7369c211622d1702c07f3fa3a45121628582a0a"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.12.0/decis-cli_1.12.0_darwin_amd64.tar.gz"
      sha256 "c9ab886bdcc877754494cabe51aaad2bb10bd221b25ef2995025bb85cf867022"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
