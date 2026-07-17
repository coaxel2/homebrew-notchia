cask "notchia" do
  version "2.9.9"
  sha256 "6510a89de6949a821cfe10ea9fcd0039927374531fab977cc2f78177971e1457"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.9/NotchIA.dmg"
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
