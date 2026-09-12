cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "497f7b442cf7369e3b6addf356bcae9bd7b8bc525beb9f7b0997a7cd0dde1dd2",
         intel: "853437e4a01ae758e914606332c5285a3d61f3065371d317504d4975c4137231"

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
