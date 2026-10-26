cask "opensupermlx" do
  version "0.1.4"
  sha256 "ca7bc99a45b482d141edcf1ae588bfb11980c6024655f1b5b60da879455c127d"

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
