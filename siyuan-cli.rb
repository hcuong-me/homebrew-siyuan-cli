class SiyuanCli < Formula
  desc "CLI for SiYuan Note"
  homepage "https://github.com/hcuong-me/siyuan-cli"
  version "0.0.4"

  on_macos do
    on_arm do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.4/siyuan-cli-darwin-arm64"
      sha256 "0b092495b72e2546b3db67bfabb7f8717cc835d3b05ffab5632d4792d30972da"
    end

    on_intel do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.4/siyuan-cli-darwin-amd64"
      sha256 "62a0da731b4e66900cdbbcf3747f15f0e50f5140f629bf1ba82a52037b5714e7"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "siyuan-cli-darwin-arm64" => "siyuan-cli"
    else
      bin.install "siyuan-cli-darwin-amd64" => "siyuan-cli"
    end
  end

  test do
    system "#{bin}/siyuan-cli", "--version"
  end
end
