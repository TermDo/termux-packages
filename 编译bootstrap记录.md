# Wsl2 Debian

## bootstrap
1.安装docker 修改properties包名 用户加入docker组

2.`./scripts/run-docker.sh`

>网络问题走代理\
`export http_proxy https_proxy`

3.`./scripts/build-bootstraps.sh  -f --architectures aarch64`


>缺ndk\
`./scripts/setup-android-sdk.sh`

>建议不要用root来运行,如果以root\
`chown -R builder:builder ~/termux-packages`

>can't read /home/builder/termux-packages/ndk-patches/25b/*.patch: Not a directory\
建立25b软连接 `ln -s 23c 25b`

>get rid of "command-not-found" package from ./scripts/build-bootstraps.sh

>编译一半退出  重试 但去掉-f  啥包编译报错 删啥







