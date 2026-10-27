cask "flameshoter" do
  version "0.2.0"
  sha256 "e9725f3886646bb254ed17a0895f2f28813eeaed5dfa8caa9268c1a7630c946d"

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
