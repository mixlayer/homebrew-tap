class MixlayerCli < Formula
    desc "Mixlayer CLI"
    homepage "https://mixlayer.com"
    version "0.1.12"

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/mixlayer/homebrew-tap/releases/download/v#{version}/mixlayer-cli-#{version}.tar.gz"
        sha256 "4bf101296d1fe6c70f95ba69ba54db0c0074d1788184d88d98e3efbf0cae8289"
    end

    def install
        bin.install "mxl"  
    end

    test do
        system "#{bin}/mxl", "--version" 
    end
end
