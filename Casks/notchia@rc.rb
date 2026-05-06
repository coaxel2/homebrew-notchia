cask "notchia@rc" do
  version "2.7.4"
  sha256 "94af3f8923dc4c81d2d0040f3142b5382d77990971c432b485e6be47c6f27d2d"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.7.4/NotchIA.dmg"
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
