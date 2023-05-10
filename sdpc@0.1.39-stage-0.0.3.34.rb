
# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sdpc0139stage00334 < Formula
  desc Manage content in multi platforms.
  homepage https://github.com/JacobLi11/ssw
  version 0.1.39-stage-0.0.3.34

  depends_on git

  on_macos do
    if Hardware::CPU.arm?
      url https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/linux/amd64/sdpc-linux-arm64-0.1.39-stage-0.0.3.34.zip
      sha256 f8cfd366300fecac9c668d024422f795fe7c54216443a83aaf9e30f7125130c9

      def install
        bin.install sdpc-darwin-arm64
        # Install bash completion
        output = Utils.safe_popen_read(#{bin}/sdpc-darwin-arm64, -h)
        (bash_completion/sdpc-darwin-arm64).write output
        # Install zsh completion
        output = Utils.safe_popen_read(#{bin}/sdpc-darwin-arm64, -h)
        (zsh_completion/_sdpc-darwin-arm64).write output
      end
    end
    if Hardware::CPU.intel?
      url https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/linux/amd64/sdpc-linux-amd64-0.1.39-stage-0.0.3.34.zip
      sha256 560225d17e8c560accba4cf92cdee0628906e9eabca6b938414a5df0abc6f6f8

      def install
        bin.install sdpc-darwin-arm64
        # Install bash completion
        output = Utils.safe_popen_read(#{bin}/acli, completion, bash)
        (bash_completion/sdpc-darwin-arm64).write output
        # Install zsh completion
        output = Utils.safe_popen_read(#{bin}/acli, completion, zsh)
        (zsh_completion/_sdpc-darwin-arm64).write output
      end
    end
  end

  test do
    system #{bin}/sdpc-darwin-arm64 -h
  end
end

