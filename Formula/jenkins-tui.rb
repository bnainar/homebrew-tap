class JenkinsTui < Formula
  desc "Terminal UI for running Jenkins parameterized pipelines in bulk"
  homepage "https://github.com/bnainar/jenkins-tui"
  version "0.0.0-202602250649-b57d015"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250649-b57d015/jenkins-tui_0.0.0-202602250649-b57d015_darwin_arm64.tar.gz"
      sha256 "b155c230363a091ea79ddda9feeceb364b9aa191cbe8ea47ec8e0416bf062473"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250649-b57d015/jenkins-tui_0.0.0-202602250649-b57d015_darwin_amd64.tar.gz"
      sha256 "ae93c64c838da0369c8f9fefb46a1418cc4c6c6216096423415ee2cb368866a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250649-b57d015/jenkins-tui_0.0.0-202602250649-b57d015_linux_arm64.tar.gz"
      sha256 "d968107cada8d4f6f78c0a19dac6cbcd657539616f5954d75c633b961005df17"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250649-b57d015/jenkins-tui_0.0.0-202602250649-b57d015_linux_amd64.tar.gz"
      sha256 "41058e667c21bf8398e504436154ba20df5fce2d510ad49f6125f41ed399351f"
    end
  end

  def install
    bin.install "jenkins-tui"
  end
end
