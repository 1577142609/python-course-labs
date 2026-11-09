# 程序设计作业仓库

> 本仓库用于存放课程作业，代码按语言和作业编号分目录管理。

## 学生信息

| 项目 | 内容 |
|---|---|
| 姓名 | （待填） |
| 学号 | （待填） |
| 班级 | （待填） |
| 课程 | （待填） |

## 目录结构

```
.
├── c/                  C 语言练习
├── cpp/                C++ 练习
├── java/               Java 练习
├── python/             Python 练习
├── homework/           课程作业（按次数分文件夹）
│   └── 01/
│       └── README.md   第 1 次作业说明
├── playground/         临时试手的代码
└── .vscode/            编辑器配置（编译、调试）
```

## 环境

| 语言 | 版本 | 位置 |
|---|---|---|
| Python | 3.13 | `python/basics/.venv` |
| C / C++ | GCC 16.1 (MSYS2) | `D:\MSYS2\ucrt64\bin` |
| Java | JDK 26 | `C:\Program Files\Java\jdk-26.0.2.1` |

## 提交规范

每次作业完成后：

```bash
git add .
git commit -m "第 3 次作业：冒泡排序"
git push
```

提交信息格式：`第 N 次作业：做了什么`，不要写 `update` / `修改` 这类无意义内容。
