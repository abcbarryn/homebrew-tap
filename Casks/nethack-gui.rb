cask "nethack-gui" do
  version "3.7.0"
  sha256 "3e49b57841c60ab7908c49734c0134c7baf2e30d1e3335d0b3d6f4d1f3dd35f5"

  # Replace with the public URL to your DMG file
  url "https://github.com/abcbarryn/NetHack/releases/download/NetHack-3.7.0/NetHack.dmg"
  name "NetHack GUI"
  desc "Dungeon exploration game with graphical interface"
  homepage "https://github.com/abcbarryn/NetHack/tree/NetHack-3.7"
  
  # Requirement checks
  depends_on macos: ">= 26.0"
  depends_on arch: :arm64
  
  # This identifies the .app inside your DMG to move to /Applications
  app "NetHack.app"
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/NetHack.app"],
                   sudo: false
  end
end
