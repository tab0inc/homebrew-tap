# typed: false
# frozen_string_literal: true

class DecisCli < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.0.1/decis-cli_1.0.1_darwin_arm64.tar.gz"
      sha256 "0f31a172637244a713cae7ce524792e431dc75068839fdfbd4352cee5d57fc25"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.0.1/decis-cli_1.0.1_darwin_amd64.tar.gz"
      sha256 "ef5faee684ea8fc77763cde7c74b51e58ab15a8e5730d0c5d16f29dad0c4543a"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
