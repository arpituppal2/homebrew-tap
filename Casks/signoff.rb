cask "signoff" do
  version "1.0.0"
  sha256 "1da17ca113fb1c3cbf0db4ea9cf208d7ba6f712bfd98c51a091ce7b43cc06c4d"

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
