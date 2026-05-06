cask "notchia" do
  version "2.7.4-beta5"
  sha256 "be715e166cf264addc54640f418bff7ee28057859d25f76d6572b99261af06f7"

  url "https://github.com/coaxel2/NotchIA/releases/download/v#{version}/NotchIA.dmg"
  name "NotchIA"
  desc "Bring your MacBook notch to life: media controls, calendar, AI assistants"
  homepage "https://notchia.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "NotchIA.app"

  # Ensures the app launches after install without requiring user terminal commands.
  # Brew handles the xattr -cr step natively; this is just for explicit clarity.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/NotchIA.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Scripts/com.coaxel2.notchia/",
    "~/Library/Containers/com.coaxel2.notchia/",
    "~/Library/Preferences/com.coaxel2.notchia.plist",
    "~/Library/Application Support/NotchIA",
  ]
end
