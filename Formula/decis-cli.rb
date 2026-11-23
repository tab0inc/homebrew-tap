# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.22.0/decis-cli_1.22.0_darwin_arm64.tar.gz"
      sha256 "e65f64ec2563eac2190f9b7e4c29cdc7e584a2f27590af1da89c37070521c473"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.22.0/decis-cli_1.22.0_darwin_amd64.tar.gz"
      sha256 "445c7233c551f48249ab4d6301c90d40171845ba657ecf3303dc9d137299b22a"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
