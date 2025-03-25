class MixlayerCli < Formula
    desc "Mixlayer CLI"
    homepage "https://mixlayer.com"
    version "0.1.3" 

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/mixlayer/homebrew-tap/releases/download/v#{version}/mixlayer-cli.tar.gz"
        sha256 "89de2295c43fc4e2981beb15b6dd729019cdc783b7f7f55aef6c140aed324540"
    end

    def install
        bin.install "mxl"  
    end

    test do
        system "#{bin}/mxl", "--version" 
    end
end
