# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SdpcLinuxArm64Stage003028 < Formula
  desc ""
  homepage ""
  url "https://s3.us-west-2.amazonaws.com/splashlock-assets.splashshield.ai/sdpc/stage/linux/sdpc-linux-arm64-stage-0.0.3.028.zip"
  sha256 "9872fc2ce9d84976f319312542b2f351213ea03c3f973134227514648cf64e4f"
  license ""

  # depends_on "cmake" => :build

  def install
    bin.install "sdpc-linux-arm64"
  end
  end
end

