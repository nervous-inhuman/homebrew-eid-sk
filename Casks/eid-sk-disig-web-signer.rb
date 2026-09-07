cask "eid-sk-disig-web-signer" do
  version "2.6.1-1"
  sha256 "b47e1984c39627d80749c67e3ce624ef9e3f7cb33d04990d31aa8334a9b7adb4"

  url "https://download.disigcdn.sk/cdn/products/websigner2/Disig_Web_Signer_#{version}.dmg"
  name "Aplikacia pre ZEP a KEP"
  desc "Application for Qualified Electronic Signature"
  homepage "https://www.slovensko.sk/sk/titulna-stranka"

  livecheck do
    url "https://download.disigcdn.sk/cdn/products/websigner2/Disig_Web_Signer.dmg"
    strategy :header_match
    regex(/Disig_Web_Signer_(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  pkg "Disig_Web_Signer.pkg"

  uninstall pkgutil: "sk.disig.WebSignerTray"
end
