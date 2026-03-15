cask "pkgsmith" do
  version "1.0.5"
  sha256 "f51b04e7756305aab811419f885e02324d57ef8cf8afd7ad7efd125d5949aa71"

  url "https://github.com/Fogh/pkg-updates/releases/download/#{version}/PKGSmith-#{version}-macos.zip", verified: "github.com/Fogh/pkg-updates/"
  name "PKGSmith"
  desc "Create signed PKG and DMG installers from reusable project definitions"
  homepage "https://pkgsmith.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
