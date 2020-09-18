class OpsWatcher < Formula
  desc "Provides OSX push notifications for JIRA"
  homepage "https://github.com/petetanton/ops-watcher"
  url "https://github.com/petetanton/ops-watcher/releases/download/v0.0.2/ops-watcher-darwin-amd64.zip"
  sha256 "1e3a8779eb2f585e1bc421fcbad7b48223ce453325cae9002c472829c90efb3d"
  license ""

  def install
    bin.install "ops-watcher-darwin-amd64" => "ops-watcher"
  end

  def post_install
    (var/"log/ops-watcher").mkpath
  end

  plist_options manual: "ops-watcher"


  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <true/>
        <key>Label</key>
        <string>homebrew.mxcl.ops-watcherl</string>
        <key>ProgramArguments</key>
        <array>
          <string>/usr/local/opt/ops-watcher/bin/ops-watcher</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>/usr/local/var/</string>
      </dict>
      </plist>
    EOS
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
