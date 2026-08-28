cask "notchia" do
  version "2.9.23"
  sha256 "ee8e1a9f8075fcc9b14a1195aba01796ec6cf3a17db7a24d3ffb734da0b43ef6"

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
