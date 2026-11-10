cask "micronotch" do
  version "1.1.6.1,1001009"
  sha256 "ca0efa12618127438368ab06025b47c52774f7dfeeb98c08a9c87b0f7ebbc38f"

  url "https://t7bzmkmvovzpbsyw.public.blob.vercel-storage.com/MicroNotch-#{version.csv.first}-terminal.dmg"
  name "MicroNotch"
  desc "Utilities and activity controls for the MacBook notch"
  homepage "https://micronotch.app/"

  livecheck do
    url "https://micronotch.app/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "MicroNotch.app"
end
