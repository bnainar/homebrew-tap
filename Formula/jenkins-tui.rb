class JenkinsTui < Formula
  desc "Terminal UI for running Jenkins parameterized pipelines in bulk"
  homepage "https://github.com/bnainar/jenkins-tui"
  version "0.0.0-202602250640-e39a3d9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250640-e39a3d9/jenkins-tui_0.0.0-202602250640-e39a3d9_darwin_arm64.tar.gz"
      sha256 "6a24a87a865654f7292cca40845784bd6a8a8c98bc21a76b8e0827104140c1c7"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250640-e39a3d9/jenkins-tui_0.0.0-202602250640-e39a3d9_darwin_amd64.tar.gz"
      sha256 "381f56d8a66810a6a9d327fe9a247eb250fb681eb55af8048a73bff429739a21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250640-e39a3d9/jenkins-tui_0.0.0-202602250640-e39a3d9_linux_arm64.tar.gz"
      sha256 "80ba454139d0bd6fe6ec47202f9edb3455c49d8ee46da799e977df5fbf81c002"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250640-e39a3d9/jenkins-tui_0.0.0-202602250640-e39a3d9_linux_amd64.tar.gz"
      sha256 "57d98ec8a49e2d3e77dd56feb5521574c0a1e929910b7a510d2a1996c823b507"
    end
  end

  def install
    bin.install "jenkins-tui"
  end
end
