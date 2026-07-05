class BtsnoopAdb < Formula
  desc "Stream Android Bluetooth HCI packets live into Wireshark via ADB"
  homepage "https://github.com/thelok1s/btsnoop-adb"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thelok1s/btsnoop-adb/releases/download/v#{version}/btsnoop-adb-aarch64-apple-darwin"
      sha256 "a4ed375346d1b3ed8fd4522d23e6c9df0c467e07001392b8c75959ce1d442b3c"
    end

    on_intel do
      url "https://github.com/thelok1s/btsnoop-adb/releases/download/v#{version}/btsnoop-adb-x86_64-apple-darwin"
      sha256 "6b0872a97ace1c0ecfd53dccc26b2a17b46ec367dcc0e249b4006429c484cf9b"
    end
  end

  def install
    # The downloaded file has the full platform-specific name; rename to the clean binary name.
    binary = Dir["btsnoop-adb-*"].first
    raise "binary not found" unless binary

    chmod 0755, binary
    bin.install binary => "btsnoop-adb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/btsnoop-adb --version")
  end
end

