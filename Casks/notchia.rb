cask "notchia" do
  version "2.9.3"
  sha256 "07979eacbaa2c4bb74f4f7b265b81364fe8cfd2b0fe629819c94bffa96258d64"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.3/NotchIA.dmg"
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
