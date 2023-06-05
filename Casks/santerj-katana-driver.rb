cask "santerj-katana-driver" do
    version "1.0.3"
    
    name "BOSS Tone Studio for Katana"
    homepage "https://www.boss.info/uk/support/by_product/katana-50/updates_drivers/"
    desc "Driver for Katana modeling amp family"
    depends_on macos: ">= :big_sur"

    url "https://static.roland.com/assets/media/tgz/katana_mac11drv103.tgz",
        verified: "static.roland.com"
    sha256 "044ffb814fbef8cedf5ee5f3a62ac11da79124c3f8405e31da4fed07180fab25"

    pkg "KatanaUSBDriver/Katana_USBDriver11.pkg"

    uninstall pkgutil: [
        "jp.co.roland.Katana.midi.11.pkg",
        "jp.co.roland.Katana.setup.11.pkg",
        "jp.co.roland.Katana.audio.11.pkg"
    ],
        delete: "/Applications/BOSS"

    #app "KATANA Driver Setup.app"
end