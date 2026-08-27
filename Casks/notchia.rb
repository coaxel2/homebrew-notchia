cask "notchia" do
  version "2.9.19"
  sha256 "112f8d4b9251197d901b9cb33e79881dd325e87f29e5097f3ca2bf5d6005059d"

  url "https://github.com/coaxel2/NotchIA/releases/download/v#{version}/NotchIA.dmg"
  name "NotchIA"
  desc "Transform the MacBook notch into an interactive control center"
  homepage "https://notchia.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "NotchIA.app"

  zap trash: [
    "~/Library/Application Scripts/com.coaxel2.notchia/",
    "~/Library/Caches/NotchIA/",
    "~/Library/Containers/com.coaxel2.notchia/",
  ]
end
