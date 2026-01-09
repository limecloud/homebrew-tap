cask "proxycast" do
  version "0.37.0"

  on_arm do
    sha256 :no_check  # 发布时更新为实际 sha256
    url "https://github.com/aiclientproxy/proxycast/releases/download/v#{version}/proxycast_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 :no_check  # 发布时更新为实际 sha256
    url "https://github.com/aiclientproxy/proxycast/releases/download/v#{version}/proxycast_#{version}_x64.dmg"
  end

  name "ProxyCast"
  desc "AI API 代理桌面应用 - 将 AI 客户端凭证转换为 OpenAI 兼容接口"
  homepage "https://github.com/aiclientproxy/proxycast"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ProxyCast.app"

  zap trash: [
    "~/.config/com.proxycast.app",
    "~/Library/Application Support/com.proxycast.app",
    "~/Library/Caches/com.proxycast.app",
    "~/Library/Preferences/com.proxycast.app.plist",
    "~/Library/Saved Application State/com.proxycast.app.savedState",
  ]
end
