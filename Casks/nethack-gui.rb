cask "nethack-gui" do
  version "3.7.0"
  sha256 "699a83dc18fbaa0bfab94a95be8c8a7a4d630648c6599cd87d0aec03158c2404"

  # Replace with the public URL to your DMG file
  url "https://github.com/abcbarryn/NetHack/releases/download/NetHack-3.7.0/NetHack.dmg"
  name "NetHack GUI"
  desc "Dungeon exploration game with graphical interface"
  homepage "https://github.com/abcbarryn/NetHack/tree/NetHack-3.7"
  
  # Requirement checks
  depends_on macos: ">= :big_sur"
  #depends_on arch: :arm64
  
  # This identifies the .app inside your DMG to move to /Applications
  app "NetHack.app"
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/NetHack.app"],
                   sudo: false
  end
end
