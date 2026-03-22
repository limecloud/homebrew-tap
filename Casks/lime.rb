cask "lime" do
  version "0.94.0"

  on_arm do
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    url "https://github.com/aiclientproxy/lime/releases/download/v#{version}/lime_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    url "https://github.com/aiclientproxy/lime/releases/download/v#{version}/lime_#{version}_x64.dmg"
  end

  name "Lime"
  desc "AI API 代理桌面应用 - 将 AI 客户端凭证转换为 OpenAI 兼容接口"
  homepage "https://github.com/aiclientproxy/lime"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Lime.app"

  zap trash: [
    "~/.config/com.lime.app",
    "~/Library/Application Support/com.lime.app",
    "~/Library/Caches/com.lime.app",
    "~/Library/Preferences/com.lime.app.plist",
    "~/Library/Saved Application State/com.lime.app.savedState",
  ]
end
