cask "mockpod" do
  version "1.0.4"
  sha256 "5f0e02849ebd0568d33bc2ac12136281cb1c1dfb30a4de40fd1a0a9a2ac8d7ee"

  url "https://github.com/sinanerdinc/mockpod/releases/download/v1.0.4/Mockpod.dmg"
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
