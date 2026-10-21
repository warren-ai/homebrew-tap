cask "warren" do
  version "0.1.0"
  sha256 "c52ab4f47dd836f8cebc32eb480050db7644b4af4b17ea7d66fa23c0aa100688"

  url "https://warren.markets/desktop/#{version}/Warren_#{version}_universal.dmg"
  name "Warren"
  desc "AI agents that invest by your rules"
  homepage "https://warren.markets/"

  livecheck do
    url "https://warren.markets/desktop/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Warren.app"

  zap trash: [
    "~/Library/Application Support/markets.warren.desktop",
    "~/Library/Caches/markets.warren.desktop",
    "~/Library/HTTPStorages/markets.warren.desktop",
    "~/Library/LaunchAgents/Warren.plist",
    "~/Library/Logs/markets.warren.desktop",
    "~/Library/Preferences/markets.warren.desktop.plist",
    "~/Library/Saved Application State/markets.warren.desktop.savedState",
    "~/Library/WebKit/markets.warren.desktop",
  ]
end
