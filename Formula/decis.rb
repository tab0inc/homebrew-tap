# typed: false
# frozen_string_literal: true

class Decis < Formula
  desc "Secure CLI for Decis health and decision context"
  homepage "https://decis.me"
  version "1.0.0"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.0.0/decis_1.0.0_darwin_arm64.tar.gz"
      sha256 "6d4e9ac60282cea723ea425b85ef52f214d97d6709f3bd880f81ea06957b52ea"
    else
      url "https://github.com/tab0inc/decis-cli-releases/releases/download/v1.0.0/decis_1.0.0_darwin_amd64.tar.gz"
      sha256 "6195433597ea3cd45f5f140c5fb1f946b855fdab5a263147d32c3a94185154c3"
    end
  end

  def install
    bin.install "decis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/decis version")
  end
end
