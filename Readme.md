# JavaSpring

Springboot各種ソース

## Hello

http://localhost:8080/hello

で表記が出てくる。

## Hello2

http://localhost:8080/hello2?name=name

でnameに応じた表記が出る。

## Hello3

http://localhost:8080/hello3/name

でnameに応じた表記が出る。

## Hello4

http://localhost:8080/hello.html

に入り、名前入力すると名前に応じた表記が出る。

## Hello5

Thymeleafを使用し、http://localhost:8080/hello5?name=name

でHTMLを使用した表記が出てくる。

## Registration

http://localhost:8080/input.html

で各種フォーム情報をいれるとresult.htmlから入力した結果が出てくる。

## Registration2

http://localhost:8080/input.html

で各種フォーム情報をいれるとresult.htmlから入力した結果が出てくる。

@ModelAttributeを使用した入力データ利用

## Game

http://localhost:8080/

数あてゲームの実施

## Todolist

http://localhost:8080/todo

Todoリスト表示機能

## Todolist2

http://localhost:8080/todo

Todoリスト追加機能

## 別のtomcatへの展開方法

あらかじめtomcat10/jdk17の環境を用意すること。

### pom.xml更新

pom.xmlに対し、以下の内容を追記する。

```bash
・17行目に追記(<version>行の下あたり。)

<version>java</version>

・<dependency></dependency>の間に記載

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-tomcat</artifactId>
    <scope>provided</scope>
</dependency>

・thymeleafを使用する場合上記のあとに追記

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-thymeleaf</artifactId>
</dependency>

```

### プログラム起動ソース更新

自動的に作成される<プロジェクト名>Application.javaを以下の内容に更新する。

```bash
package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class <プロジェクト名>Application extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(<プロジェクト名>Application.class, args);
	}
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(<プロジェクト名>Application.class);
    }

}

```

### warファイル作成

Eclipse画面でプロジェクトを右クリックし、

実行 - 9 Mavenビルドをクリックする。

targetフォルダにwarファイルが完成されること。

### tomcat展開

warファイルをwebappsフォルダに入れる。

以下のURLにアクセスして動作確認する。

http://<TomcatIPアドレス>:8080/<warファイル名>/<Webパス>
