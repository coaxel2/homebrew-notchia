cask "notchia" do
  version "2.9.22"
  sha256 "89910036897a7f0715c712bc4c5df0f370fc2cea7d944740676e7c973a879d71"

  url "https://github.com/coaxel2/NotchIA/releases/download/v#{version}/NotchIA.dmg"
  name "NotchIA"
  desc "Transform the MacBook notch into an interactive control center"
  homepage "https://notchia.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "NotchIA.app"

  zap trash: [
    "~/Library/Application Scripts/com.coaxel2.notchia/",
    "~/Library/Caches/NotchIA/",
    "~/Library/Containers/com.coaxel2.notchia/",
  ]
end
