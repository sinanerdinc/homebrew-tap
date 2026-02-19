cask "mockpod" do
  version "1.0.2"
  sha256 "a295e4483a43335fd4e4855b10fc62ed00c0689435c91c6ffd814acd736d6ff9"

  url "https://github.com/sinanerdinc/mockpod/releases/download/v#{version}/Mockpod.dmg"
  name "Mockpod"
  desc "A powerful network interception and mocking tool for macOS users."
  homepage "https://github.com/sinanerdinc/mockpod"

  app "Mockpod.app"
end
