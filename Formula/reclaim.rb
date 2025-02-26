class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/archive/refs/tags/v0.0.13.tar.gz"
  sha256 "23516331f2b02cf439886426c57ac2575a395a3524b161205522fa10d5f616b8"
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
