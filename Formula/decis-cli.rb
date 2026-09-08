# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.13.2/decis-cli_1.13.2_darwin_arm64.tar.gz"
      sha256 "cf4e1c09f9bdf0870cff515769028279755aa43748a6830da0e058b7f5e538f1"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.13.2/decis-cli_1.13.2_darwin_amd64.tar.gz"
      sha256 "9ee784b84561253604da220630594648b3a3004c846d15ed8b0c3f9e3f37ba5d"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
