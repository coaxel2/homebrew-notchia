cask "notchia" do
  version "2.9.8"
  sha256 "ae58b49a532e072a33a34fc52c929f4d51c31871e114f192a738048e180fb588"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.8/NotchIA.dmg"
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
