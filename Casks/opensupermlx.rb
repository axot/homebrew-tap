cask "opensupermlx" do
  version "0.1.10"
  sha256 "41c62fe9dcee1c5fb228c91c5390cede72eaaa14be78791d9f35fc0ed490a458"

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
