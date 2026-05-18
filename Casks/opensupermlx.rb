cask "opensupermlx" do
  version "0.0.13"
  sha256 "8df478ff5e6dcad43550208400b857c7e1134ef9768e5080f94c46d218c731e8"

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
