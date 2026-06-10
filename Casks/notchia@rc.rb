cask "notchia@rc" do
  version "2.9.6"
  sha256 "16ac0029eb6c88c7347078a703c1750bae2ff7773f256b0af917200ada6cb2d6"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.6/NotchIA.dmg"
  name "NotchIA RC"
  desc "NotchIA 🎸🎶 (Release Candidate)"
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
