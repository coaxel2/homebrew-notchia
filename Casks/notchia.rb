cask "notchia" do
  version "2.8.3"
  sha256 "74e2bb6ea71736398f9f253e45cd4576cafe5d75b6680fd62ccedc080c9a6914"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.3/NotchIA.dmg"
  name "NotchIA"
  desc "NotchIA 🎸🎶 "
  homepage "https://github.com/coaxel2/NotchIA"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "NotchIA.app"

  zap trash: [
    "~/Library/Application Scripts/com.coaxel2.notchia/",
    "~/Library/Containers/com.coaxel2.notchia/",
  ]
end
