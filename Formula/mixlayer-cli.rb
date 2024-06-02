class MixlayerCli < Formula
    desc "Example binary from GitHub"
    homepage "https://mixlayer.com"
    version "0.1.0" 

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/mixlayer/homebrew-tap/releases/download/v#{version}/mixlayer-cli.tar.gz"
        sha256 "2f05ff672ec492bf6e40b16c275ea32b46de73f1cbe486eeb12f9a170b7084fb"
    end

    def install
        bin.install "mxl"  
    end

    test do
        system "#{bin}/mxl", "--version" 
    end
end
