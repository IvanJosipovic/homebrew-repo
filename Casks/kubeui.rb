cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "1ba03acbbc8e1566943a68ce9af5294f69d2ebab6991c1e571f9fe62a4e287e5",
         intel: "2d53e1b114c502a1e22579dd9bf38997670c754f26eeefa0fff859fa63e10a41"

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
