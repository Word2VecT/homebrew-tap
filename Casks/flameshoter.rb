cask "flameshoter" do
  version "0.2.5"
  sha256 "d88cea353666510c508999df27ae52bb4011d77638f9fb79c2bc26dbbf23d31b"

  url "https://github.com/Word2VecT/flameshoter/releases/download/v#{version}/Flameshoter-#{version}-macos-arm64.zip"
  name "Flameshoter"
  desc "Screenshot and annotation app with native Liquid Glass controls"
  homepage "https://github.com/Word2VecT/flameshoter"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Flameshoter.app"
  binary "#{appdir}/Flameshoter.app/Contents/MacOS/Flameshoter", target: "flameshoter"

  uninstall quit: "io.github.Word2VecT.flameshoter"

  zap trash: ["~/.config/flameshoter", "~/Library/Preferences/io.github.Word2VecT.flameshoter.plist"]

  caveats <<~EOS
    Allow Screen Recording for Flameshoter when first taking a screenshot.
    Official releases use a fixed self-signed certificate and are not notarized by Apple.
    Upgrading from an older ad hoc signed release requires granting Screen Recording again once.
    If macOS blocks the first launch, use System Settings > Privacy & Security > Open Anyway.
  EOS
end
