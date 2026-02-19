cask "mockpod" do
  version "1.0.3"
  sha256 "3b3d80d83cb41adcca4840e1baec5b936e082bc933bb663c43de49182cbc71fa"

  url "https://github.com/sinanerdinc/mockpod/releases/download/v1.0.3/Mockpod.dmg"
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
