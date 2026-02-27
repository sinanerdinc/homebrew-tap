cask "mockpod" do
  version "1.0.8"
  sha256 "2211c5e207117c75f8838db1d7f5155583ccf1ffa6e48116ddfa64afd95d6f13"

  url "https://github.com/sinanerdinc/mockpod/releases/download/v1.0.8/Mockpod.dmg"
  name "Mockpod"
  desc "A powerful network interception and mocking tool for macOS users."
  homepage "https://github.com/sinanerdinc/mockpod"

  app "Mockpod.app"

  caveats do
    <<~EOS
      Since Mockpod is ad-hoc signed and not notarized by Apple, macOS may block it on the first launch.
      If the app fails to open, you can remove the quarantine by running the following command in your Terminal:

        xattr -cr /Applications/Mockpod.app
    EOS
  end
end
