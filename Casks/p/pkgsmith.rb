cask "pkgsmith" do
  version "1.0.2"
  sha256 "8c56160b203ff52d9cb6e2fdf1ecb57a7b5687b70b3537f0f5d63db97724537b"

  url "https://github.com/Fogh/pkg-updates/releases/download/#{version}/PKGSmith-#{version}-macos.zip", verified: "github.com/Fogh/pkg-updates/"
  name "PKGSmith"
  desc "Create signed PKG and DMG installers from reusable project definitions"
  homepage "https://pkgsmith.app/"
  auto_updates true

  depends_on macos: ">= :tahoe"

  app "PKGSmith.app"
  binary "PKGSmith.app/Contents/MacOS/PKGSmith", target: "pkgsmith"

  zap trash: [
    "~/Library/Application Support/PKGSmith",
    "~/Library/Caches/dk.foghdev.PKGSmith",
    "~/Library/Preferences/dk.foghdev.PKGSmith.plist",
    "~/Library/Saved Application State/dk.foghdev.PKGSmith.savedState",
  ]
end
