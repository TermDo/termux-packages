# Wsl2 Debian

> 1.安装docker 修改properties包名

`./scripts/run-docker.sh ./scripts/build-bootstraps.sh -f  --architectures aarch64 &> build.log`

**can't read /home/builder/termux-packages/ndk-patches/25c/*.patch: Not a directory**  在build-bootstrap.sh里改
