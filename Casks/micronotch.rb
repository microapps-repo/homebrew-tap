cask "micronotch" do
  version "1.1.6.2,1001011"
  sha256 "f1423b4ba1c893547effcfec917bc84a242c1a6bfd27fe9c7375c32055dec19b"

  url "https://t7bzmkmvovzpbsyw.public.blob.vercel-storage.com/MicroNotch-#{version.csv.first}.dmg"
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
