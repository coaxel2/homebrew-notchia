cask "notchia" do
  version "2.8.7"
  sha256 "a6f47733808a60130ab5ef622e4db10571e0c88b7a0c62eee3f5258fcda8dbd9"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.7/NotchIA.dmg"
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
