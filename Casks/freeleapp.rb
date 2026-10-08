cask "freeleapp" do
  version "1.3.1"
  sha256 "49ada62199c04133e4b11270a3c7e85c717f0a82f40510052da55a5b89ca463c"

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
