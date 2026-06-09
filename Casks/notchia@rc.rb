cask "notchia@rc" do
  version "2.9.5"
  sha256 "88970b80bf0df882f2b46d5a47eb601c39a6a4f9fd24288d870b718027d5ccf0"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.5/NotchIA.dmg"
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
