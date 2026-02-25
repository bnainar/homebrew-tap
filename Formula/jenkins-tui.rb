class JenkinsTui < Formula
  desc "Terminal UI for running Jenkins parameterized pipelines in bulk"
  homepage "https://github.com/bnainar/jenkins-tui"
  version "0.0.0-202602250654-0a8a741"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250654-0a8a741/jenkins-tui_0.0.0-202602250654-0a8a741_darwin_arm64.tar.gz"
      sha256 "38f9f2540f732efe36bd962692ebe0b96b2d9df613fdfc1f8d048075fc2dfbc6"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250654-0a8a741/jenkins-tui_0.0.0-202602250654-0a8a741_darwin_amd64.tar.gz"
      sha256 "52396aa7343467a4e3b0d852af16ea2f3684a41b6fe6b093d0859525bb0e8b77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250654-0a8a741/jenkins-tui_0.0.0-202602250654-0a8a741_linux_arm64.tar.gz"
      sha256 "e816a4ee15ef79170a05ad234dbb4e71e569f2af4fecc1fae4749feece9a67a3"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602250654-0a8a741/jenkins-tui_0.0.0-202602250654-0a8a741_linux_amd64.tar.gz"
      sha256 "2db7ad25294d6e5121749a8984b0e2f50a866f5420939b357aae20e7dd6a221d"
    end
  end

  def install
    bin.install "jenkins-tui"
  end
end
