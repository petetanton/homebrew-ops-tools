class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/archive/refs/tags/v0.0.14.tar.gz"
  sha256 "6c1b853d0656204db88f06c5deddd278604f8663c9424588a48a82013a129909"
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
