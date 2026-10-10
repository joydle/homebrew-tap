class Arf < Formula
  desc "From-scratch LLM inference engine for Apple silicon"
  homepage "https://github.com/joydle/Arf"
  url "https://github.com/joydle/Arf/releases/download/v1.0.0/arf-1.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "038c8c474f9e3813a7177e78e7c0681f30bb31636148e4761ae7de214761b4b6"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "arf", "arf-serve", "arf-router"
  end

  def caveats
    <<~EOS
      Models download into ~/.arf/models (or ./models where that exists);
      ARF_MODELS_DIR or --dir choose another place.

      Quick check:   arf doctor
      Main model:    arf pull qwen3.8:27b && arf serve qwen3.8:27b   (needs ~27 GB free memory)
      Video input needs ffmpeg:   brew install ffmpeg
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arf --version")
  end
end
