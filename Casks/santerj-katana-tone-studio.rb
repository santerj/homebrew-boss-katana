cask "santerj-katana-tone-studio" do
    version "4.0.0"

    name "BOSS Tone Studio for Katana"
    homepage "https://www.boss.info/uk/support/by_product/katana-50/updates_drivers/"
    desc "Editor for Katana modeling amp family"

    url "https://static.roland.com/assets/media/zip/bts_katana_m400.zip",
        verified: "www.boss.info"
    sha256 "7e47013594f01025960ac3bd4e01d03328e38490547a02e5e3bd32289c965209"

    container nested: "BOSS TONE STUDIO for KATANA.dmg"

    app "BOSS_TONE_STUDIO_for_KATANA.app"
  
    zap trash: "~/Library/Application Support/BOSS-TONE-STUDIO-for-KATANA/"

    depends_on arch: [:x86_64]
end
