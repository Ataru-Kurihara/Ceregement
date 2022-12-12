package com.Utils;

import java.util.Scanner;

public class db {
    public static String setDbName() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("データベース名を入力してください");
        scanner.close();
        return scanner.next();
    }

    public static String setDbUser() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("ユーザ名を入力してください");
        scanner.close();
        return scanner.next();
    }

    public static String setDbPassword() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("パスワードを入力してください");
        scanner.close();
        return scanner.next();
    }
}
