cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "3f4ef5ea36b227d38da01e10cddecfa332c1cd37b407b45c66dcd02ae11f89e0",
         intel: "1355bbdbd269859f235e6248382767713cb8eba938b49ceffb91ec5da038cdd9"

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
