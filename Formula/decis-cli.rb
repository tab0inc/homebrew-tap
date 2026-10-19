# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.19.0/decis-cli_1.19.0_darwin_arm64.tar.gz"
      sha256 "773aa9eee98e9318592ac2bdff58813573ebba741d5f88ee5a4653ccc32eb1e9"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.19.0/decis-cli_1.19.0_darwin_amd64.tar.gz"
      sha256 "41953f550146eb0a07401766c72580dfbe04665c45536cddbdbb2ab3f35ba62c"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
