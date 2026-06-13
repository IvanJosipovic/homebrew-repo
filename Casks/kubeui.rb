cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "382295309dbccc60c88377bc73a7aa9bc18a5c8d1d3db01d87b855534eaf1525",
         intel: "ce1538a512e3eae42e7c2a611d7214e1d68c2e0ecc55de66898e40c29d810ddf"

  url "https://github.com/IvanJosipovic/KubeUI/releases/download/v#{version}/KubeUI-osx-#{arch}-Portable.zip",
      verified: "github.com/IvanJosipovic/KubeUI/"
  name "KubeUI"
  desc "Kubernetes User Interface"
  homepage "https://kubeui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "KubeUI.app"

  zap trash: "~/.kubeui"
end
