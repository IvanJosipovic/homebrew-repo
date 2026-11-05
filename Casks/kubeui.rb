cask "kubeui" do
  arch arm: "arm64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "659a405ebd9fbe9c8a98ec66a62597478f7f63e2b5ea57c6fa839b4bb3742536",
         intel: "af9f6acabc51696604406de1bba222eae5b019b8cf099df201cce2cb26ccd105"

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
