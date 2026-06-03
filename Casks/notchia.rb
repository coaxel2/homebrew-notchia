cask "notchia" do
  version "2.9.4"
  sha256 "3b8517750d21276dd1e8b9bd136e2f62a13661ced1cb53f460b1dba2c0d7e839"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.4/NotchIA.dmg"
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
