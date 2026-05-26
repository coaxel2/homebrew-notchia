cask "notchia@rc" do
  version "2.8.8"
  sha256 "4daf52b75c8ddfb0ef3fad9d6f4cbc2f2719a80eea8b183e10f3026dc40b5dc8"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.8/NotchIA.dmg"
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
