class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/releases/download/v0.0.12/reclaim-cli_0.0.12_darwin_arm64.zip"
  sha256 "7f010bb7b331922eb65cb7cd6fad8dae5a9e432f4aa1a0342578ad662b8d8053"
  license 

  def install
    bin.install "reclaim-cli_v0.0.12" => "reclaim"
  end

  def post_install
    (var/"log/reclaim-cli").mkpath
  end


  test do
    system "false"
  end
end
