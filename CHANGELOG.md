# Changelog

格式遵循 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)，版本号遵循 [SemVer](https://semver.org/lang/zh-CN/)。

## [Unreleased]

## [0.3.1] - 2026-11-26

### Added
- 内置浏览器插件 `@capacitor/browser`：禁止内嵌的站点（微信 / 知乎 / OpenAI 等）改为在 App 内打开，不再整页跳转到 Chrome

### Changed
- versionCode 301 / versionName 0.3.1

## [0.3.0] - 2026-11-22

### Added
- App 四页结构：首页 / 知识 / 问答 / 我的
- 首页三模块：最近问答、知识回顾（间隔复习）、最近文章（可标已读）
- 主题 A/B/C 可切换
- 顶部统一的网站版 / App 版切换
- 我的页：个人档案与「内容更新」时间
- 外部沉淀入口

### Fixed
- 问答文字重叠、密度过高
- 状态栏与底部安全区适配
- 知识模块整块可点，返回回到「知识」Tab


## [0.2.0] - 2026-11-22

### Added
- 双风格切换：网站版 / App 风格（方向 A 纸感档案占位首页）
- 安卓返回键与侧滑手势：优先网页后退，根页面最小化
- @capacitor/app 插件

### Fixed
- App 内刷新按钮与「返回顶部」按钮重叠（移到左下）


## [0.1.0] - 2026-11-21

### Added
- Capacitor 8 工程骨架，加载 https://dragonhuge.github.io
- Android 平台工程与 GitHub Actions APK 构建
- 设计简报与三个方向稿（纸感档案 / 终端索引 / 画廊笔记）
