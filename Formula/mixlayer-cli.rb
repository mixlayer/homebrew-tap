class MixlayerCli < Formula
    desc "Mixlayer CLI"
    homepage "https://mixlayer.com"
    version "0.1.7" 

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/mixlayer/homebrew-tap/releases/download/v#{version}/mixlayer-cli.tar.gz"
        sha256 "53d84ba712837e3650d3c5908dad7af3aef9f6ab898b2932d37f847858fd822b"
    end

    def install
        bin.install "mxl"  
    end

    test do
        system "#{bin}/mxl", "--version" 
    end
end
