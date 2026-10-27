cask "flameshoter" do
  version "0.1.0"
  sha256 "0ccf23aab726c800e9deacaa1a970f8b3a130fd7ec2075144d37777f8208d878"

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
    This initial release is ad hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, use System Settings > Privacy & Security > Open Anyway.
  EOS
end
