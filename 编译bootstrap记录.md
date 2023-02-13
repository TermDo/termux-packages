# Wsl2 Debian

## bootstrap
安装docker 修改properties包名 新建output文件夹

`./scripts/run-docker.sh`

`./scripts/build-bootstraps.sh -f  --architectures aarch64 &> build.log`

建立25c软连接

建议不要用root来运行
如果以root

chown -R builder:builder ~/termux-packages

网络问题走代理
export http_proxy