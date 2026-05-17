cask "notchia@rc" do
  version "2.8.1"
  sha256 "3fbd3205e5c7e21e7f57fc221075f2c2020727aab7adac2d6fa91e5eff01059c"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.1/NotchIA.dmg"
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
