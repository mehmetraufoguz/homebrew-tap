class Phoneset < Formula
  desc "Use your phone as your PC's microphone, headphones and webcam over Wi-Fi"
  homepage "https://rauf.app/phoneset"
  license "MIT"

  depends_on macos: :monterey

  on_macos do
    on_arm do
      url "https://github.com/mehmetraufoguz/phoneset/releases/download/v0.3.1/phoneset-macos-arm64.tar.gz"
      sha256 "e4e044381defa21bb331cb1624c56d9c9d379a91479c8999629669a0b4b9275c"
    end

    on_intel do
      url "https://github.com/mehmetraufoguz/phoneset/releases/download/v0.3.1/phoneset-macos-amd64.tar.gz"
      sha256 "e613f447ef64fc73b76c1d188a404fed96838e53789c978f145b21a36bdd6f7c"
    end
  end

  def install
    bin.install "phoneset"
  end

  def caveats
    <<~EOS
      This is the Mac half of phoneset. The other half is the iPhone app:
        https://apps.apple.com/app/id6828815833

      The phone's microphone needs the free BlackHole 2ch virtual device:
        brew install blackhole-2ch

      Start it with `phoneset` (shows a QR code), or in the background with
      `phoneset daemon`. Update it with `brew upgrade phoneset`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phoneset version")
  end
end
