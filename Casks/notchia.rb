cask "notchia" do
  version "2.9.24"
  sha256 "deb38526dbcb0d8766d4c642f2e186594a3000009acfbbf163c9d82251a66350"

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
