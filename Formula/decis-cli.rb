# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.17.0/decis-cli_1.17.0_darwin_arm64.tar.gz"
      sha256 "8d80b1edc327cb2664057ee9ca2e6c564fece5fa1b4c447ce008c1f1512a52c6"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.17.0/decis-cli_1.17.0_darwin_amd64.tar.gz"
      sha256 "ffd7e32003d67c20ba199a3897993b66020adf4cf8bef854c06f6118a4d8df16"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
