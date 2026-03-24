class CynkConsole < Formula
  desc "Interactive MQTT device simulator for the Cynk IoT platform"
  homepage "https://github.com/Kovalsky/cynk-console"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kovalsky/cynk-console/releases/download/v#{version}/cynk-console-macos-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/Kovalsky/cynk-console/releases/download/v#{version}/cynk-console-macos-x86_64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kovalsky/cynk-console/releases/download/v#{version}/cynk-console-linux-aarch64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/Kovalsky/cynk-console/releases/download/v#{version}/cynk-console-linux-x86_64"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    binary = Dir["cynk-console*"].first
    bin.install binary => "cynk-console"
  end

  test do
    assert_match "cynk-console #{version}", shell_output("#{bin}/cynk-console --version")
  end
end
