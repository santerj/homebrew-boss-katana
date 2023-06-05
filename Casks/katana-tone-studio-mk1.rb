cask "katana-tone-studio-mk1" do
    version "4.0.0"
    sha256 :no_check

    name "BOSS Tone Studio for Katana"
    homepage "https://www.boss.info/uk/support/by_product/katana-50/updates_drivers/"
    desc "Visual editor for BOSS Katana (Mk1) amplifiers"

    depends_on cask: "katana-driver"

    url "https://static.roland.com/assets/media/zip/bts_katana_m#{version.delete('.')}.zip",
        verified: "static.roland.com"

    container nested: "bts_katana_m400/BOSS TONE STUDIO for KATANA.dmg"

    app "BOSS_TONE_STUDIO_for_KATANA.app"
  
    zap trash: "~/Library/Application Support/BOSS-TONE-STUDIO-for-KATANA/"
end
