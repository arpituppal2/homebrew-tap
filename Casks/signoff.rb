cask "signoff" do
  version "1.0.0"
  sha256 "5394757bba151ac15f24f707353a649e34f7d747c1acde44374341db7e0a12ab"

  url "https://github.com/arpituppal2/Signoff/releases/download/v#{version}/Signoff.dmg"
  name "Signoff"
  desc "On-device AI email signoff generator — Apple Foundation Models, no cloud"
  homepage "https://github.com/arpituppal2/Signoff"

  depends_on macos: ">= :tahoe" # macOS 26.0 minimum

  app "Signoff.app"

  caveats do
    <<~EOS
      Signoff is a macOS 26+ Apple Silicon app that is not notarized by Apple.

      After installing, macOS may warn that the app is damaged. Fix it once with:

        xattr -dr com.apple.quarantine /Applications/Signoff.app

      or install with `brew install --cask --no-quarantine arpituppal2/tap/signoff`.
      See https://github.com/arpituppal2/Signoff#installation for details.
    EOS
  end
end
