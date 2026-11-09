# -*- coding: utf-8 -*-
"""
第 1 个程序：Python
在 VS Code 里点右上角 ▶ 就能运行。
"""


def greet(name):
    return "Hello, " + name + "!"


print("=== Python test ===")
print(greet("student"))

# 1 到 100 求和
total = sum(range(1, 101))
print("1 + 2 + ... + 100 =", total)

# 打印九九表前 3 行
for i in range(1, 4):
    row = " ".join("{0}x{1}={2:<2}".format(i, j, i * j) for j in range(1, 10))
    print(row)
