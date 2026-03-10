cask "proxycast" do
  version "0.83.1"

  on_arm do
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    url "https://github.com/aiclientproxy/proxycast/releases/download/v#{version}/proxycast_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
