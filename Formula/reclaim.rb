class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/archive/refs/tags/v0.0.15.tar.gz"
  sha256 "2191031ed76fb36c8e31644d21aa89719702fdb7db0296aa06ae5df39ba34c7f"
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
