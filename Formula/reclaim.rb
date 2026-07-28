class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/archive/refs/tags/v0.0.16.tar.gz"
  sha256 "6fa5ec026c794ad8486402f5d04bcac3fd0eafa355902b86b9b53cfb3aa8ed2c"
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
