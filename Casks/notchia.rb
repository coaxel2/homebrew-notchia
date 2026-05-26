cask "notchia" do
  version "2.9.0"
  sha256 "31cc7198c3f6eaf84b80d797eb9051d503d1fd25f597dffeeef12dde7e8cd735"

  url "https://github.com/coaxel2/NotchIA/releases/download/v2.9.0/NotchIA.dmg"
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
