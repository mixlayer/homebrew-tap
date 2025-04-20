class MixlayerCli < Formula
    desc "Mixlayer CLI"
    homepage "https://mixlayer.com"
    version "0.1.5" 

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/mixlayer/homebrew-tap/releases/download/v#{version}/mixlayer-cli.tar.gz"
        sha256 "0793ca96b446ba906503db21d8b683f7310977e3a14bd764fba6d469acd22463"
    end

    def install
        bin.install "mxl"  
    end

    test do
        system "#{bin}/mxl", "--version" 
    end
end
