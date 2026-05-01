class SiyuanCli < Formula
  desc "CLI for SiYuan Note"
  homepage "https://github.com/hcuong-me/siyuan-cli"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.1/siyuan-darwin-arm64"
      sha256 "ce0ff11a7242155173ac41083914d08f2a4f827dda2230d6401f4e9cc072e7a7"
    end

    on_intel do
      url "https://github.com/hcuong-me/siyuan-cli/releases/download/v0.0.1/siyuan-darwin-amd64"
      sha256 "ef1570bb8ee5826635e22f60dfcc3c28f84a6b73b007bcef11e1da43b5620049"
    end
  end

  def install
    bin.install "siyuan" => "siyuan-cli"
  end

  test do
    system "#{bin}/siyuan-cli", "--version"
  end
end
