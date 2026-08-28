cask "notchia" do
  version "2.9.21"
  sha256 "8b22d26fbca1bfd1834f16bc17c68f166f871da7207b2906c9caabc1757923a7"

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
