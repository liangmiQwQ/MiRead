# MiRead

一款更加适合年轻人的阅读软件

---

原则上，这款需要 macOS Big Sur 以上的 macOS 版本来进行运行，理论上来说也可以使用其他类 Unix 操作系统，并且需要安装 Python3.7.2 版本或更高的 Python 版本和相关的 Python 依赖。

理论上，使用 MacOS Big Sur 以上的 macOS 版本会获得更好的使用体验。

同时也需要安装 Nodejs 和 Electron 相关的依赖保证此程序可以合理运行。

此程序理论上打包会相对困难，因为其中包含 Python 的修改器（架构设计问题），所以需要使用源代码打包。
不过这里有一个 install.sh，可以帮助你安装相关的所有依赖，可以在终端运行

```bash
sh install.sh
```

然后可以使用以下命令启动

```bash
pnpm start
```

或者使用

```bash
sh start.sh
```
