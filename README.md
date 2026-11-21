# DragonHuge App（个人资料库 App）

把个人站 https://dragonhuge.github.io 装进手机：Android 先行，iOS 后续。

## 技术路线

- **Capacitor** 包装现有静态站（一套 Web 代码 → Android / iOS）
- v1 直接加载线上站点（内容更新不用发版）；后续可选「打包离线副本」
- **APK 用 GitHub Actions 构建**，本机不装 Android Studio / SDK
- 设计用 huashu-design（已克隆到 `.huashu-design/`，仅作参考，不打包）

## 目录

```
dragonhuge-app/
├── README.md
├── docs/                 # 设计稿与方案
├── web/                  # （可选）离线打包的站点副本
├── android/              # Capacitor 生成
├── ios/                  # 二期
└── .github/workflows/    # build-apk.yml
```

## 路线图

- [ ] M1：设计定稿（3 选 1）
- [ ] M2：Capacitor 工程 + 远程加载站点
- [ ] M3：GitHub Actions 出 debug APK
- [ ] M4：Android 真机试用、修交互
- [ ] M5：离线缓存 / 启动页 / 图标
- [ ] M6：iOS（需 Apple Developer 账号）

## 待确认

- 仓库名：`dragonhuge-app`（建议新开，独立于站点部署仓）
- 包名：`com.dragonhuge.app`
- App 名称：DragonHuge / 知识花园
