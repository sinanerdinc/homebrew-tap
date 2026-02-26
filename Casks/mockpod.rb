cask "mockpod" do
  version "1.0.5"
  sha256 "414258e3e09aae665160e762d6213f954271abc8323909fd206ab3d2478283df"

  url "https://github.com/sinanerdinc/mockpod/releases/download/v1.0.5/Mockpod.dmg"
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
