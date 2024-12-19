class MixlayerCli < Formula
    desc "Example binary from GitHub"
    homepage "https://mixlayer.com"
    version "0.1.2-rc0" 

    if OS.mac? && Hardware::CPU.arm?
        url "https://github.com/mixlayer/homebrew-tap/releases/download/v#{version}/mixlayer-cli.tar.gz"
        sha256 "55e7a97f582f270aa54e9a6acff86dc75efddf5feb6f4baad801f8a8027ac363"
    end

    def install
        bin.install "mxl"  
    end

    test do
        system "#{bin}/mxl", "--version" 
    end
end
