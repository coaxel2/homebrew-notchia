cask "notchia" do
  version "2.7.7"
  sha256 "9a5b46b91ae3aa1f63c60c71642ba4c103af49c07f9870f36c1c646cb10dad36"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.7.7/NotchIA.dmg"
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
