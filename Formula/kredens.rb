class Kredens < Formula
  desc "Simple CLI tool to manage environment credentials"
  homepage "https://github.com/arturtamborski/kredens"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arturtamborski/kredens/releases/download/v0.1.0/kredens_Darwin_arm64.tar.gz"
      # sha256 will be filled after first release
    else
      url "https://github.com/arturtamborski/kredens/releases/download/v0.1.0/kredens_Darwin_x86_64.tar.gz"
      # sha256 will be filled after first release
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arturtamborski/kredens/releases/download/v0.1.0/kredens_Linux_arm64.tar.gz"
      # sha256 will be filled after first release
    else
      url "https://github.com/arturtamborski/kredens/releases/download/v0.1.0/kredens_Linux_x86_64.tar.gz"
      # sha256 will be filled after first release
    end
  end

  def install
    bin.install "kredens"
  end

  test do
    system "#{bin}/kredens", "help"
  end
end
