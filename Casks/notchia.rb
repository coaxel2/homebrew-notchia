cask "notchia" do
  version "2.7.5"
  sha256 "02d9abe21874b57778a7125c18ebec2fd2846c6b4016431d15268530c54643f2"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.7.5/NotchIA.dmg"
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
