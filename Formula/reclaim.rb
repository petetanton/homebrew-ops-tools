class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "b3d6211de2f476a7a1f7d5d0e84d0d74582ab3452c9cbcc82c0ab562d8fab5f0"
  license ""

  def install
    bin.install "reclaim-cli_v0.0.2" => "reclaim"
  end

  def post_install
    (var/"log/reclaim-cli").mkpath
  end


  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ops-watcher`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
