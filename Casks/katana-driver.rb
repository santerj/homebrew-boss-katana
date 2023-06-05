cask "katana-driver" do
    version "1.0.3"
    sha256 :no_check
    
    name "BOSS Tone Studio for Katana"
    homepage "https://www.boss.info/uk/support/by_product/katana-50/updates_drivers/"
    desc "USB driver for BOSS Katana amplifiers"
    depends_on macos: ">= :big_sur"

    url "https://static.roland.com/assets/media/tgz/katana_mac11drv#{version.delete('.')}.tgz",
        verified: "static.roland.com"

    pkg "KatanaUSBDriver/Katana_USBDriver11.pkg"

    caveats do
      reboot
    end

    uninstall pkgutil: [
      "jp.co.roland.Katana.midi.11.pkg",
      "jp.co.roland.Katana.setup.11.pkg",
      "jp.co.roland.Katana.audio.11.pkg"
    ],
      delete: "/Applications/BOSS"

end
