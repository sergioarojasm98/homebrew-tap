cask "freeleapp" do
  version "1.1.0"
  sha256 "73f330962ce11c67be8ae4dc2beb690e095f61c4e8cd2f67228f06b6daa566d4"

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

  caveats <<~EOS
    Freeleapp is not notarized yet, so macOS blocks its first launch. Clear the quarantine flag once:
      xattr -dr com.apple.quarantine #{appdir}/Freeleapp.app
  EOS
end
