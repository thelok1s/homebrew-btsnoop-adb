class BtsnoopAdb < Formula
  desc "Stream Android Bluetooth HCI packets live into Wireshark via ADB"
  homepage "https://github.com/thelok1s/btsnoop-adb"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thelok1s/btsnoop-adb/releases/download/v#{version}/btsnoop-adb-aarch64-apple-darwin"
      sha256 "PLACEHOLDER_ARM64"
    end

    on_intel do
      url "https://github.com/thelok1s/btsnoop-adb/releases/download/v#{version}/btsnoop-adb-x86_64-apple-darwin"
      sha256 "PLACEHOLDER_X86_64"
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
