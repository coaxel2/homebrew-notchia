cask "notchia" do
  version "2.8.4"
  sha256 "b2be2ac60ca497d40f4b18e1478f823a8ed808d4bcf2ed69276546fb64ced98e"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.4/NotchIA.dmg"
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
