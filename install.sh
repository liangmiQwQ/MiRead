#!/bin/bash

read -p "此操作将为MiRead安装Homebrew, 是否继续？(y/n) " answer
if [[ ! $answer =~ ^[Yy]$ ]]; then
    echo "操作已取消。"
    exit 0
fi

read -p "此操作将为MiRead安装 Node.js、Python 3.11.2、pnpm，继续吗？(y/n) " answer
if [[ ! $answer =~ ^[Yy]$ ]]; then
    echo "操作已取消。"
    exit 0
fi

read -p "此操作将要使用Python和pnpm安装MiRead必须依赖，继续吗？(y/n) " answer
if [[ ! $answer =~ ^[Yy]$ ]]; then
    echo "操作已取消。"
    exit 0
fi

echo "开始安装 Node.js 和 Python 3.11.2..."

# 安装 Homebrew（如果尚未安装）
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 安装 Node.js
brew install node

# 安装 Python 3.11.2
brew install python@3.11

# 输出安装完成信息
echo "Node.js 和 Python 3.11.2 安装完成！"
echo "下载pnpm..."

# 安装 pnpm
npm install -g pnpm

# 安装依赖
# 添加--break-system-packages的原因是因为python3.11.2的pip3安装包时会报错
# homeBrew的特性，我也没办法
echo "开始安装MiRead必须依赖..."
pip3 install -r src/pythonServer/requirement.txt --break-system-packages
pnpm install

echo "MiRead 安装完成！"
