cask "pkgsmith" do
  version "1.0.1"
  sha256 "637fb09173da363b066538f8e795fcfcd0345ed74c83dd7698063fc8a0def8ac"

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
