cask "freeleapp" do
  version "1.2.1"
  sha256 "635cc2a89bf96657d767bd20034d2181e1429b3338db7a3f6dad5d6ddae9be36"

  url "https://github.com/sergioarojasm98/freeleapp/releases/download/v#{version}/Freeleapp-#{version}-arm64.dmg"
  name "Freeleapp"
  desc "Manage temporary AWS and Azure credentials"
  homepage "https://freeleapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Freeleapp.app"

  zap trash: [
    "~/.freeleapp",
    "~/Library/Application Support/Freeleapp",
    "~/Library/Caches/leapp-updater",
    "~/Library/Logs/Freeleapp",
    "~/Library/Preferences/io.github.sergioarojasm98.freeleapp.plist",
    "~/Library/Saved Application State/io.github.sergioarojasm98.freeleapp.savedState",
  ]
end
