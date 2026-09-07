cask "eid-sk" do
  version "5.4"
  sha256 "2d6996d0e255cd6b5bcecdfa0623ba1fbc23d1ef483ce6c95ca4d2e66f51e3c5"

  url "https://eidas.minv.sk/download/files/mac/eID_klient.dmg"
  name "Aplikacia pre eID"
  name "eID Klient"
  name "Electronic identity card software for Slovakia"
  name "eID Slovakia"
  desc "Application for log in by Slovak eID"
  homepage "https://www.slovensko.sk/sk/titulna-stranka"

  livecheck do
    url "https://eidas.minv.sk/download/files/mac/eID_klient_release_notes.txt"
    regex(/eID klient.*?verzia (\d+(?:\.\d+)+) macOS/i)
  end

  auto_updates true

  app "eID_klient.app"

  uninstall quit:   "sk.minv.eID_klient",
            signal: [
              ["KILL", "sk.minv.eID_klient"],
            ]
end
