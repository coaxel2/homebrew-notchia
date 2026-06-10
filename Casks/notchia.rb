cask "notchia" do
  version "2.9.7"
  sha256 "0b71d0663ebc57de8a0ba1f403bca8d630fc108360429d2bcc26dcf457691e45"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.7/NotchIA.dmg"
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
