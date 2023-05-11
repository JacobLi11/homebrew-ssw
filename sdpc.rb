
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sdpc < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/JacobLi11/ssw"
  version "0.1.39-stage-0.0.3.34"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/arm64/sdpc-darwin-arm64-0.1.39-stage-0.0.3.34.zip"
      sha256 "5766962dc58220c5dfab378828aa1719aa70ddcd0a5d609b5fd91d61761663b3"

      def install
        bin.install "sdpc-darwin-arm64"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/sdpc-darwin-arm64", "-h")
        (bash_completion/"sdpc-darwin-arm64").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/sdpc-darwin-arm64", "-h")
        (zsh_completion/"_sdpc-darwin-arm64").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/amd64/sdpc-darwin-amd64-0.1.39-stage-0.0.3.34.zip"
      sha256 "bc79edb45d26ef243bd263169c78b7a81894d4e3ba95de3cc93eca40941e1ff5"

      def install
        bin.install "sdpc-darwin-amd64"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/sdpc-darwin-amd64", "-h")
        (bash_completion/"sdpc-darwin-amd64").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/sdpc-darwin-amd64", "-h")
        (zsh_completion/"_sdpc-darwin-amd64").write output
      end
    end
  end

  test do
    system "#{bin}/sdpc-darwin-arm64 -h || #{bin}/sdpc-darwin-amd64 -h"
  end
end

