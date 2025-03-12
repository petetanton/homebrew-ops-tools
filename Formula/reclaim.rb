class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/releases/download/v0.0.14/reclaim-cli_0.0.14_darwin_arm64.zip"
  sha256 "94eb6cb5f1e4da18a6fe502ef1caddbf510c182e2734fd66bb0312024176a54d"
  license 

  def install
    bin.install "reclaim-cli_v0.0.14" => "reclaim"
  end

  def post_install
    (var/"log/reclaim-cli").mkpath
  end


  test do
    system "false"
  end
end
