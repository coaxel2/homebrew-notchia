cask "notchia" do
  version "2.8.5"
  sha256 "b19aa1a27df08f7c5ca2a87b9a4268cff6aadd75f757ae4eeb976a9e303d618f"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.5/NotchIA.dmg"
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
