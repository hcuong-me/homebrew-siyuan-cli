class SiyuanCli < Formula
  desc "CLI for SiYuan Note"
  homepage "https://github.com/hcuong-me/siyuan-cli"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.2/siyuan-darwin-arm64"
      sha256 "4ea87b63d42a563801b6da211568b82df957ae4e30994942750c0772a17a14e2"
    end

    on_intel do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.2/siyuan-darwin-amd64"
      sha256 "273e57bcc4901eac41b75fc37c924e266ba400b6beac96d1fe0d641e9a4389e4"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "siyuan-darwin-arm64" => "siyuan-cli"
    else
      bin.install "siyuan-darwin-amd64" => "siyuan-cli"
    end
  end

  test do
    system "#{bin}/siyuan-cli", "--version"
  end
end
