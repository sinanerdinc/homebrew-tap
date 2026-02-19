cask "mockpod" do
  version "1.0.2"
  sha256 "a295e4483a43335fd4e4855b10fc62ed00c0689435c91c6ffd814acd736d6ff9"

  url "https://github.com/sinanerdinc/mockpod/releases/download/v#{version}/Mockpod.dmg"
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
