cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "5afa31b1f2bd963f84cacc025f2b0f3b187d3f5ef2cd147576c7a1b5bf7cf450",
         intel: "75beaf0b6cca587755e63d5041c4ae2edb5b24d9b8cb2dba66a3efd2cf569897"

  url "https://github.com/IvanJosipovic/KubeUI/releases/download/v#{version}/KubeUI-osx-#{arch}-Portable.zip"
  name "KubeUI"
  desc "Kubernetes User Interface"
  homepage "https://kubeui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "KubeUI.app"

  zap trash: "~/.kubeui"
end
