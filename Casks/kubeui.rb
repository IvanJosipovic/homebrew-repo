cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "04c65aed1650da0b9e425f082e7c9436bb39c2dbfe6352181cd9b0d0c614f33e",
         intel: "bdc2139a58ccaba5852c0822b8d7cb84c623d9e030f47095ffa6ac8a3d395828"

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
