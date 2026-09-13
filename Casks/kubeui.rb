cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "63329b9a1d3a05c4602bfde33a1411927f7a6f3b5e3daf9fc5abdda3691480ff",
         intel: "df00777aa7935175869a821f374840f4866701f3a770d73a51a3f927f061b7e2"

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
