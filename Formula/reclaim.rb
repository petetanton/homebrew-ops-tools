class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/releases/download/v0.0.16/reclaim-cli_0.0.16_darwin_arm64.zip"
  sha256 "239a23e13cb278095a6a6d16ce6216aac709c6537c74672000873519ecb1d4a6"
  license 

  def install
    bin.install "reclaim-cli_v0.0.16" => "reclaim"
  end

  def post_install
    (var/"log/reclaim-cli").mkpath
  end


  test do
    system "false"
  end
end
