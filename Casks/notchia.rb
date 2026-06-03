cask "notchia" do
  version "2.9.2"
  sha256 "aed2f3609ab129c8e5986ef12e6df40e67e0754b408479f3d759574623683d03"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.2/NotchIA.dmg"
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
