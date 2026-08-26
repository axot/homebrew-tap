cask "opensupermlx" do
  version "0.0.18"
  sha256 "4ace88bbe63969992243b31d69bd610d8433506abe94ae2251c340ea8435e32e"

  url "https://github.com/axot/OpenSuperMLX/releases/download/#{version}/OpenSuperMLX.dmg"
  name "OpenSuperMLX"
  desc "Real-time audio transcription for macOS powered by MLX on Apple Silicon"
  homepage "https://github.com/axot/OpenSuperMLX"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "OpenSuperMLX.app"

  zap trash: [
    "~/Library/Application Scripts/org.axot.OpenSuperMLX",
    "~/Library/Application Support/org.axot.OpenSuperMLX",
    "~/Library/Preferences/org.axot.OpenSuperMLX.plist",
  ]
end
