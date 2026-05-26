cask "notchia" do
  version "2.9.1"
  sha256 "3d04932fdb1747c6cbe498d31ec47180a70599237c450f6497c5f7587b9ee459"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.1/NotchIA.dmg"
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
