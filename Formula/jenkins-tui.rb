class JenkinsTui < Formula
  desc "Terminal UI for running Jenkins parameterized pipelines in bulk"
  homepage "https://github.com/bnainar/jenkins-tui"
  version "0.0.0-202602261120-7b00644"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602261120-7b00644/jenkins-tui_0.0.0-202602261120-7b00644_darwin_arm64.tar.gz"
      sha256 "14358651c4568a677397a89d0a61e1bd0ecccd53297de954d1b1ad3c717ab0f6"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602261120-7b00644/jenkins-tui_0.0.0-202602261120-7b00644_darwin_amd64.tar.gz"
      sha256 "a2a29302a9ce1bc253e5b83d7793c7b00096b44c51ad8058bd061cfc1ef8ffee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602261120-7b00644/jenkins-tui_0.0.0-202602261120-7b00644_linux_arm64.tar.gz"
      sha256 "e052fbb805e577086397f597434d08effc84e53ebfcb457da3b60ec6e4a594e5"
    else
      url "https://github.com/bnainar/jenkins-tui/releases/download/main-202602261120-7b00644/jenkins-tui_0.0.0-202602261120-7b00644_linux_amd64.tar.gz"
      sha256 "1a7242e8a0e08e2986209d4a902576acfac852ea5c96a330ab05c33f4478ac09"
    end
  end

  def install
    bin.install "jenkins-tui"
  end
end
