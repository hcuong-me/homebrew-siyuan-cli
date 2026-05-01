class SiyuanCli < Formula
  desc "CLI for SiYuan Note"
  homepage "https://github.com/hcuong-me/siyuan-cli"
  version "0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.3/siyuan-darwin-arm64"
      sha256 "f10f21fd5d0e9b066cc12b7483312f14c7e2e6a853bf38d0d7d73bcf27f127f9"
    end

    on_intel do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.3/siyuan-darwin-amd64"
      sha256 "5622117b40a829de7f176ec584de261dc2c305bb1d93dd8825e06d8e740d7556"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "siyuan-darwin-arm64" => "siyuan"
    else
      bin.install "siyuan-darwin-amd64" => "siyuan"
    end
  end

  test do
    system "#{bin}/siyuan", "--version"
  end
end
