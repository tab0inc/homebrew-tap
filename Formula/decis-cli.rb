# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.2.0/decis-cli_1.2.0_darwin_arm64.tar.gz"
      sha256 "f062e2bb1eee1e2a8d262f5c8daa94335983875e8c764da55d2b4fc6aa1cfc7b"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.2.0/decis-cli_1.2.0_darwin_amd64.tar.gz"
      sha256 "a6f90c5eb9bfdac34bf48c410096a4630ae46f50ce5a6f4f9dbd30d8dce79991"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
