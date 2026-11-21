#!/bin/bash
# 用法: scripts/set-version.sh 0.1.0
set -eu
V="${1:?usage: set-version.sh X.Y.Z}"
echo "$V" | grep -Eq "^[0-9]+\.[0-9]+\.[0-9]+$" || { echo "版本号必须是 X.Y.Z"; exit 1; }
MAJOR=$(echo "$V" | cut -d. -f1); MINOR=$(echo "$V" | cut -d. -f2); PATCH=$(echo "$V" | cut -d. -f3)
CODE=$((MAJOR*10000 + MINOR*100 + PATCH))

/usr/bin/python3 - "$V" <<"PY"
import json,sys
from pathlib import Path
v=sys.argv[1]
p=Path("package.json"); d=json.loads(p.read_text()); d["version"]=v
p.write_text(json.dumps(d,ensure_ascii=False,indent=2)+"\n")
PY

sed -i "" -E "s/versionCode [0-9]+/versionCode ${CODE}/" android/app/build.gradle
sed -i "" -E "s/versionName \"[^\"]*\"/versionName \"${V}\"/" android/app/build.gradle
echo "版本已设为 ${V} (versionCode ${CODE})"
