cask "winch" do
  version "1.0.0"
  sha256 "b6fe9a9f8d46d2fe2514971cea3f51fca69d98563c01277b7dcf9d592af11aee"

  url "https://dl.getwinch.app/releases/Winch-#{version}.dmg"
  name "Winch"
  desc "App Store and Google Play optimization, run by your coding agent"
  homepage "https://getwinch.app/"

  livecheck do
    url "https://dl.getwinch.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Winch.app"

  zap trash: [
    "~/.agents/skills/winch",
    "~/.claude/skills/winch",
    "~/Library/Application Support/dev.joydle.winch",
    "~/Library/Caches/dev.joydle.winch",
    "~/Library/HTTPStorages/dev.joydle.winch",
    "~/Library/Preferences/dev.joydle.winch.plist",
    "~/Library/Saved Application State/dev.joydle.winch.savedState",
    "~/Library/WebKit/dev.joydle.winch",
  ]
end
