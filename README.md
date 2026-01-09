# aiclientproxy/homebrew-tap

[ProxyCast](https://github.com/aiclientproxy/proxycast) 的 Homebrew Tap 仓库。

## 什么是 ProxyCast？

ProxyCast 是一个 AI API 代理桌面应用，可以将你的 AI 客户端凭证（Kiro、Gemini CLI、通义千问等）转换为标准 OpenAI API，让任何支持 OpenAI 接口的工具都能使用。

## 安装

```bash
# 添加 tap
brew tap aiclientproxy/tap

# 安装 ProxyCast
brew install --cask proxycast
```

## 常用命令

```bash
# 更新到最新版本
brew upgrade --cask proxycast

# 卸载
brew uninstall --cask proxycast

# 移除 tap
brew untap aiclientproxy/tap
```

## macOS 首次运行

由于应用未经 Apple 签名，首次打开可能提示「应用已损坏」，请运行：

```bash
xattr -cr /Applications/ProxyCast.app
```

## 配置信息

- 默认端口: `8999`
- 配置目录: `~/Library/Application Support/com.proxycast.app/`
- API Base URL: `http://localhost:8999/v1`

## 相关链接

- 项目主页: https://github.com/aiclientproxy/proxycast
- 问题反馈: https://github.com/aiclientproxy/proxycast/issues
- 发布页面: https://github.com/aiclientproxy/proxycast/releases

## 维护说明

此 Cask 通过 GitHub Actions 自动更新。当 ProxyCast 发布新版本时，会自动计算 DMG 的 sha256 并更新 Cask 文件。
