cask "xworkmate" do
  version "1.2.0"
  sha256 "7f918d27bede1a35fe202a503939e6642025fb167a84ecf9f5c7cbaf62d3d2be"

  url "https://github.com/ai-workspace-lab/xworkmate-app/releases/download/v1.2.0-build.851/XWorkmate-#{version}.dmg"
  name "XWorkmate"
  desc "XWorkmate desktop-first AI workspace shell"
  homepage "https://github.com/ai-workspace-lab/xworkmate-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "XWorkmate.app"

  zap trash: [
    "~/Library/Application Support/plus.svc.xworkmate",
    "~/Library/Caches/plus.svc.xworkmate",
    "~/Library/Preferences/plus.svc.xworkmate.plist",
    "~/Library/Saved Application State/plus.svc.xworkmate.savedState",
  ]
end
