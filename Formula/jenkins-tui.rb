class JenkinsTui < Formula
  desc "Terminal UI for running Jenkins parameterized pipelines in bulk"
  homepage "https://github.com/bnainar/jenkins-tui"
  version "0.0.0-202602250812-ec70239"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250812-ec70239/jenkins-tui_0.0.0-202602250812-ec70239_darwin_arm64.tar.gz"
      sha256 "20f9a879994e1d3658ab2dc09f33141bc515c792db3c7792c28a47cd40cedde1"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250812-ec70239/jenkins-tui_0.0.0-202602250812-ec70239_darwin_amd64.tar.gz"
      sha256 "d80540a4d9ccb4e5fc691b16219d4033fff790c2948d390d7b0381720f0166d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250812-ec70239/jenkins-tui_0.0.0-202602250812-ec70239_linux_arm64.tar.gz"
      sha256 "92cea654622c129a7a209cb7415c4a2d0ee76f042232db5892cfa52084106284"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250812-ec70239/jenkins-tui_0.0.0-202602250812-ec70239_linux_amd64.tar.gz"
      sha256 "5de8521cf3254de918cfe436e1cf359d776a167e857a681b6b2a86712e5f0130"
    end
  end

  def install
    bin.install "jenkins-tui"
  end
end
