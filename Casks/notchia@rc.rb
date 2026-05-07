cask "notchia@rc" do
  version "2.7.6"
  sha256 "6f3686db803d4c2f9395e0dbf88763ad4183090d30e895359396903a0c5e8364"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.7.6/NotchIA.dmg"
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
