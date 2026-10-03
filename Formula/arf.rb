class Arf < Formula
  desc "From-scratch LLM inference engine for Apple silicon"
  homepage "https://github.com/joydle/Arf"
  url "https://github.com/joydle/Arf/releases/download/v0.5.0/arf-0.5.0-aarch64-apple-darwin.tar.gz"
  sha256 "392edd7ad45fdb922e808a156769918e80e125bc31bff7ec2e32606aeef762d6"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "arf", "arf-serve", "arf-router"
  end

  def caveats
    <<~EOS
      Models download into ./models under the directory you run `arf` from;
      run `arf pull` and `arf serve` from the same place (or pass --dir).

      Quick check:   arf doctor
      Main model:    arf pull qwen3.8:27b && arf serve qwen3.8:27b   (needs ~27 GB free memory)
      Video input needs ffmpeg:   brew install ffmpeg
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arf --version")
  end
end
