cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256 arm:   "57b1742ab86f62590786e361edb0854ecfc87d87469af5d9ecf89e05aa7a3557",
         intel: "ce37a73004e86ea0bbb0781b510b85aaf8bd9439e810654819ba3327e024daa2"

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
