class Zport < Formula
  desc "Find and kill processes using local ports"
  homepage "https://github.com/erik-kroon/zport"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/erik-kroon/zport/releases/download/v0.1.0/zport-v0.1.0-macos-arm64.tar.gz"
      sha256 "ae9ddfbeb44410429e8112e812333a1a37aaaafc8ef92fa9c6b97e9d8e4dda7b"
    elsif Hardware::CPU.intel?
      url "https://github.com/erik-kroon/zport/releases/download/v0.1.0/zport-v0.1.0-macos-x86_64.tar.gz"
      sha256 "f07f86c7926956f947aa73adb7fee66dea714b7730926d7f38f9eab1cf1dbb48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/erik-kroon/zport/releases/download/v0.1.0/zport-v0.1.0-linux-aarch64.tar.gz"
      sha256 "58872442ef71f892e7ba72a3651ca68662477ad50714baf8169369f1a7bba52f"
    elsif Hardware::CPU.intel?
      url "https://github.com/erik-kroon/zport/releases/download/v0.1.0/zport-v0.1.0-linux-x86_64.tar.gz"
      sha256 "14dd782c99d63f18d8d59a19a4252c3804589a5995463a53d4aa61528cf7441c"
    end
  end

  def install
    bin.install "bin/zport"
  end

  test do
    assert_match "zport #{version}", shell_output("#{bin}/zport --version")
  end
end
