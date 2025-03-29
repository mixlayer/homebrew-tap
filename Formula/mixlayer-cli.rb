class MixlayerCli < Formula
    desc "Mixlayer CLI"
    homepage "https://mixlayer.com"
    version "0.1.4" 

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/mixlayer/homebrew-tap/releases/download/v#{version}/mixlayer-cli.tar.gz"
        sha256 "7fbb2cba4faca748bfd06b4b6eaffc7321f016933928eed982bdcf0544aff28a"
    end

    def install
        bin.install "mxl"  
    end

    test do
        system "#{bin}/mxl", "--version" 
    end
end
