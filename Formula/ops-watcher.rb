class OpsWatcher < Formula
  desc "Provides OSX push notifications for JIRA"
  homepage "https://github.com/petetanton/ops-watcher"
  url "https://github.com/petetanton/ops-watcher/releases/download/v0.0.3/ops-watcher-darwin-amd64.zip"
  sha256 "0a2f5b9c8af0501dee2d7b7998ef0ae676bdcc56f1ac80cd2d2f47bd8d547231"
  license ""

  depends_on "terminal-notifier"

  def install
    bin.install "ops-watcher-darwin-amd64" => "ops-watcher"
  end

  def post_install
    (var/"log/ops-watcher").mkpath
  end

  service do
    run ["/usr/local/opt/ops-watcher/bin/ops-watcher"]
    working_dir "/usr/local/var/"
    log_path var/"log/ops-watcher/ops-watcher.log"
    error_log_path var/"log/ops-watcher/ops-watcher.log"
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
