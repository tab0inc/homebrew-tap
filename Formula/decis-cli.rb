# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.13.1/decis-cli_1.13.1_darwin_arm64.tar.gz"
      sha256 "e89f502b82a1ce579fb65365b306b00d52b34a3cd31d8fa88e87a4d73781c644"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.13.1/decis-cli_1.13.1_darwin_amd64.tar.gz"
      sha256 "30cc2d5047aed6cd946173d6fa6471c3f88f717aba149ad018952a6cccd0ba24"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
