cask "mockpod" do
  version "1.0.7"
  sha256 "4e1ee2a55d5d19e60eab91003a05254ee90dbbc01b83626738d56dfdbd0aeeec"

  url "https://github.com/sinanerdinc/mockpod/releases/download/v1.0.7/Mockpod.dmg"
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
