cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "abd7204d719f918c1656d85eb1e3e5f69ddb1b857fe7a08190ea40c219b5c92e",
         intel: "11a219774af2b1306948e00cf7a283d249351e5718cd6161de153c783ceb4235"

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
