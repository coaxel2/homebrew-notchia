cask "notchia" do
  version "2.8.9"
  sha256 "42ba586cd00b5c56a047365e67db9a2ffa113ba5af3755e087251bcd77188c89"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.9/NotchIA.dmg"
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
