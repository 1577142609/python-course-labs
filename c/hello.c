/* 第 2 个程序：C 语言
 * 编译：gcc hello.c -o hello.exe
 * 运行：.\hello.exe
 */
#include <stdio.h>

int main(void) {
    printf("=== C test ===\n");

    int sum = 0;
    for (int i = 1; i <= 100; i++) {
        sum += i;
    }
    printf("1 + 2 + ... + 100 = %d\n", sum);

    for (int i = 1; i <= 3; i++) {
        for (int j = 1; j <= 9; j++) {
            printf("%dx%d=%-2d ", i, j, i * j);
        }
        printf("\n");
    }
    return 0;
}
