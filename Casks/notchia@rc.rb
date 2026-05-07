cask "notchia@rc" do
  version "2.7.8"
  sha256 "bf31eff776ea13a25cb5d72211ca11dee37ac7bc12e6fa11dc140dea74e9320c"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.7.8/NotchIA.dmg"
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
