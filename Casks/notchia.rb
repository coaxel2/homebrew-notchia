cask "notchia" do
  version "2.8.0"
  sha256 "47290cc5e06558c815965b25dcb562b496cae55ed7cbd52730080ed15cd4b732"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.0/NotchIA.dmg"
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
