# 构建说明

## 本地（不需要 Android Studio）

前提：JDK 21 + Android SDK（本机暂未安装）。

```bash
npm ci
npx cap sync android
cd android && ./gradlew assembleDebug
# 产物：android/app/build/outputs/apk/debug/app-debug.apk
```

## GitHub Actions（推荐）

推送到 `main` 或手动触发 `build-apk`：
仓库 → Actions → build-apk → Run workflow → 下载 `dragonhuge-debug-apk`。

## v1 形态

`capacitor.config.json` 里 `server.url = https://dragonhuge.github.io`，
App 启动即加载线上站，内容更新不用发版。
后续可切「打包离线副本」：把站点构建产物放进 `www/`，去掉 server.url。
