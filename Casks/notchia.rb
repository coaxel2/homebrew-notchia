cask "notchia" do
  version "2.8.6"
  sha256 "a5a41023bb0995c79bf5470420af65ae4188a10c0e866f81ef9ba8b5122f746c"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.8.6/NotchIA.dmg"
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
