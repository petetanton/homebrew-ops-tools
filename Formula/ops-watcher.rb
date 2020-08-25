class OpsWatcher < Formula
  desc "Provides OSX push notifications for JIRA"
  homepage "https://github.com/petetanton/ops-watcher"
  url "https://github.com/petetanton/ops-watcher/releases/download/0.0.1/ops-watcher-darwin-amd64.zip"
  sha256 "439a402f9c09ae6227c01f957a15064b7ffd42227061e450dfc497c81449f51b"
  license ""

  def install
    bin.install "ops-watcher-darwin-amd64" => "ops-watcher"
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
