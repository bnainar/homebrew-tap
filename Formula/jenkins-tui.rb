class JenkinsTui < Formula
  desc "Terminal UI for running Jenkins parameterized pipelines in bulk"
  homepage "https://github.com/bnainar/jenkins-tui"
  version "0.0.0-202603210628-0df4b4a"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202603210628-0df4b4a/jenkins-tui_0.0.0-202603210628-0df4b4a_darwin_arm64.tar.gz"
      sha256 "57658fb6aabc015a95fe9e9666f05f0fb76cf5974aeb403304d1fcbc92efb3fd"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202603210628-0df4b4a/jenkins-tui_0.0.0-202603210628-0df4b4a_darwin_amd64.tar.gz"
      sha256 "c4d64184fccc473a8d372c69392a3e44d1c0fb7c6c6521f4742759b5950959a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202603210628-0df4b4a/jenkins-tui_0.0.0-202603210628-0df4b4a_linux_arm64.tar.gz"
      sha256 "50130eccb2572ffa58a3f1d2f402be27c4eda5c34f09ece3d2f37a8b48e0d84e"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202603210628-0df4b4a/jenkins-tui_0.0.0-202603210628-0df4b4a_linux_amd64.tar.gz"
      sha256 "198a463f59b349b78b1d50832b2605f5717bb81b525a8994505ad85cd977f144"
    end
  end

  def install
    bin.install "jenkins-tui"
  end
end
