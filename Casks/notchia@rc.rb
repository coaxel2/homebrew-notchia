cask "notchia@rc" do
  version "2.8.2"
  sha256 "92f52019ccacf947695b8995cdb42d831f387c953f4d35f1f980d5d48a6be72a"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.2/NotchIA.dmg"
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
