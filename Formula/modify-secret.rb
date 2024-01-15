class ModifySecret < Formula
  desc "a kubectl plugin, that allows user to modify the secret without having to worry about doing base64 encoding/decoding"
  homepage "https://github.com/rajatjindal/kubectl-modify-secret"
  version "0.0.46"

  if OS.mac? && Hardware::CPU.intel?
		url "https://github.com/rajatjindal/kubectl-modify-secret/releases/download/v#{version}/kubectl-modify-secret_v#{version}_darwin_amd64.tar.gz"
    sha256 "92ae5624935107ba354b5d245d305845ff7ef07a03f7088cea45ed7c33eed319"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rajatjindal/kubectl-modify-secret/releases/download/v#{version}/kubectl-modify-secret_v#{version}_darwin_arm64.tar.gz"
    sha256 "7ce141459ded189bdbf2aeb498cdc1c07b5bcc5a29c7d9ef6fdb479bffba4075"
  end

  if OS.linux? && Hardware::CPU.intel?
		url "https://github.com/rajatjindal/kubectl-modify-secret/releases/download/v#{version}/kubectl-modify-secret_v#{version}_linux_amd64.tar.gz"
    sha256 "cf60808b0f4edfdc0a53d179b0e86a61df4c0df1a3ff50f9f4931d4bd551ee7d"
  end

  if OS.linux? && Hardware::CPU.arm?
		url "https://github.com/rajatjindal/kubectl-modify-secret/releases/download/v#{version}/kubectl-modify-secret_v#{version}_linux_arm64.tar.gz"
    sha256 "4a7a3badb8867479133651eb3ba08dea9925b55344f7d38c1359e7d61c6333b4"
  end

  def install
    bin.install "kubectl-modify_secret"
  end

  def post_install
  end

  test do
    assert shell_output("#{bin}/kubectl-modify_secret --version")
  end
end