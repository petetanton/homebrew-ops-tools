class Reclaim < Formula
  desc "Command line tool for reclaim.ai"
  homepage "https://github.com/petetanton/reclaim-cli"
  url "https://github.com/petetanton/reclaim-cli/releases/download/untagged-3eaf19944a850757e6ad/reclaim-cli_0.0.1-rc3_darwin_amd64.zip"
  sha256 "88218269cd5d44d700f97247c3172c9f7b7217e835a6ec76a3fcb36925042f52"
  license ""

  def install
    bin.install "reclaim-cli-darwin-amd64" => "ops-watcher"
  end

  def post_install
    (var/"log/reclaim-cli").mkpath
  end

  service do
    run ["/usr/local/opt/reclaim-cli/bin/reclaim-cli"]
    working_dir "/usr/local/var/"
    log_path var/"log/reclaim-cli/reclaim-cli.log"
    error_log_path var/"log/reclaim-cli/reclaim-cli.log"
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
