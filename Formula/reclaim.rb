class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/releases/download/v0.0.15/reclaim-cli_0.0.15_darwin_arm64.zip"
  sha256 "cfcb6882b7c361d5e3a0cd6342ab03e7adba8bed542784d4d328412aa4879640"
  license 

  def install
    bin.install "reclaim-cli_v0.0.15" => "reclaim"
  end

  def post_install
    (var/"log/reclaim-cli").mkpath
  end


  test do
    system "false"
  end
end
