# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sdpc104 < Formula
  desc "Manage content in multi platforms."
  homepage "https://github.com/JacobLi11/ssw"
  version "1.0.4"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/arm64/sdpc-darwin-arm64-0.1.38-stage-0.0.3.33.zip"
      sha256 "c137f37db148d25e9bf075a6b3cb45c0da4e14b027653d4f317085e7ce982024"

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
      url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/darwin/arm64/sdpc-darwin-arm64-0.1.38-stage-0.0.3.33.zip"
      sha256 "c137f37db148d25e9bf075a6b3cb45c0da4e14b027653d4f317085e7ce982024"

      def install
        bin.install "sdpc-darwin-arm64"
        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "bash")
        (bash_completion/"sdpc-darwin-arm64").write output
        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/acli", "completion", "zsh")
        (zsh_completion/"_sdpc-darwin-arm64").write output
      end
    end
  end

  test do
    system "#{bin}/sdpc-darwin-arm64 -h"
  end
end