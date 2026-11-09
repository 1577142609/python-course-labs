/* 第 3 个程序：Java
 * 注意：public class 的名字必须和文件名一致，所以文件叫 Hello.java
 * 编译：javac Hello.java
 * 运行：java Hello
 */
public class Hello {
    public static void main(String[] args) {
        System.out.println("=== Java test ===");

        int sum = 0;
        for (int i = 1; i <= 100; i++) {
            sum += i;
        }
        System.out.println("1 + 2 + ... + 100 = " + sum);

        for (int i = 1; i <= 3; i++) {
            StringBuilder row = new StringBuilder();
            for (int j = 1; j <= 9; j++) {
                row.append(String.format("%dx%d=%-2d ", i, j, i * j));
            }
            System.out.println(row.toString());
        }
    }
}
