class MixlayerCli < Formula
    desc "Example binary from GitHub"
    homepage "https://mixlayer.com"
    version "0.1.2-rc0" 

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/mixlayer/homebrew-tap/releases/download/v#{version}/mixlayer-cli.tar.gz"
        sha256 "b80a7c2e654f01a2ec0d2dd75c712fa8df19087d247f69d87702ca2db81bd12d"
    end

    def install
        bin.install "mxl"  
    end

    test do
        system "#{bin}/mxl", "--version" 
    end
end
