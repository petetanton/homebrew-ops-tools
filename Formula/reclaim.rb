class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "ef4408d660900eded6d47f6adcddda1b47118fe6a8f1c4d9ccf3ead6681c2243"
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
