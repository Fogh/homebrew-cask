cask "pkgsmith" do
  version "1.0.4"
  sha256 "0bbf224136d49a7c89a8c946fb2c41b7107043cc7b2bd07ec338147df0bbd7ee"

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
