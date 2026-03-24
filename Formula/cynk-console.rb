class CynkConsole < Formula
  desc "Interactive MQTT device simulator for the Cynk IoT platform"
  homepage "https://github.com/Kovalsky/cynk-console"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kovalsky/cynk-console/releases/download/v#{version}/cynk-console-macos-arm64"
      sha256 "3af4593b86b5210dc322ae5604a24185053fb86b63cec2771ccf53dd3df387a4"
    else
      url "https://github.com/Kovalsky/cynk-console/releases/download/v#{version}/cynk-console-macos-x86_64"
      sha256 "0781f487acd8ae7efaca89705cca7ae377e4a3de01e9d77f21b6cf748db1838d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kovalsky/cynk-console/releases/download/v#{version}/cynk-console-linux-aarch64"
      sha256 "3ba652b5d3f90b1bbfc0526abd37d3d391f8beda391367762beb1e76fefcddb7"
    else
      url "https://github.com/Kovalsky/cynk-console/releases/download/v#{version}/cynk-console-linux-x86_64"
      sha256 "8ef3a5a3bbc348137f82b01e4d1c41d80cdd0a30b653d82fa68963c04b478894"
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
