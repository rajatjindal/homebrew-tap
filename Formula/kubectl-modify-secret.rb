class KubectlModifySecret < Formula
  desc "a kubectl plugin, that allows user to modify the secret without having to worry about doing base64 encoding/decoding"
  homepage "https://github.com/rajatjindal/kubectl-modify-secret"
  version "0.0.45"

  if OS.mac? && Hardware::CPU.intel?
		url "https://github.com/rajatjindal/kubectl-modify-secret/releases/download/v#{version}/kubectl-modify-secret_v#{version}_darwin_amd64.tar.gz"
    sha256 "4994aacf2aa2a6d8029dba7d80b619c466c9a19ebf5f5f86088ce6b0fa222326"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rajatjindal/kubectl-modify-secret/releases/download/v#{version}/kubectl-modify-secret_v#{version}_darwin_arm64.tar.gz"
    sha256 "46c0162212fa57d91a2866c8b8a42658f60cdf38baa143c10b44340ddadb7cc5"
  end

  if OS.linux? && Hardware::CPU.intel?
		url "https://github.com/rajatjindal/kubectl-modify-secret/releases/download/v#{version}/kubectl-modify-secret_v#{version}_linux_amd64.tar.gz"
    sha256 "3f3ede2d9b4d4baee818019619642571b254092954800ee31f76ba12d88a4bb7"
  end

  if OS.linux? && Hardware::CPU.arm?
		url "https://github.com/rajatjindal/kubectl-modify-secret/releases/download/v#{version}/kubectl-modify-secret_v#{version}_linux_arm64.tar.gz"
    sha256 "7f26953a6d8e74613e25da9e2d9d6f070ef3e0ad7ec45e6c5c3acc04ceb1d67f"
  end

  def install
    bin.install "kubectl-modify-secret"
  end

  def post_install
  end

  test do
    assert shell_output("#{bin}/kubectl-modify-secret --version")
  end
end