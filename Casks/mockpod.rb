cask "mockpod" do
  version "1.0.6"
  sha256 "d4ded541aad2ef5f85ff58a64563ff8e2eff7b936c15332610ee7430b96fc3d1"

  url "https://github.com/sinanerdinc/mockpod/releases/download/v1.0.6/Mockpod.dmg"
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
