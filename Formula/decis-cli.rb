# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.4.0/decis-cli_1.4.0_darwin_arm64.tar.gz"
      sha256 "1f0ee47fbe8193f3df5d6dd45b60946549842dac5486821fedea15f198f965a6"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.4.0/decis-cli_1.4.0_darwin_amd64.tar.gz"
      sha256 "662a2d50cd0e9581c939aefb9e647dfc52574024f21df8e0a905aa30cfb2a216"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
