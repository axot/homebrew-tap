cask "opensupermlx" do
  version "0.0.6"
  sha256 "b6cd20b11bbf77b154188e82790fad97013190d68b874afefe9819a1dc05f8fe"

  url "https://github.com/axot/OpenSuperMLX/releases/download/#{version}/OpenSuperMLX.dmg"
  name "OpenSuperMLX"
  desc "Real-time audio transcription for macOS powered by MLX on Apple Silicon"
  homepage "https://github.com/axot/OpenSuperMLX"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "OpenSuperMLX.app"

  zap trash: [
    "~/Library/Application Scripts/org.axot.OpenSuperMLX",
    "~/Library/Application Support/org.axot.OpenSuperMLX",
    "~/Library/Preferences/org.axot.OpenSuperMLX.plist",
  ]
end
