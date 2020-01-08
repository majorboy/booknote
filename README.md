# Booknote

## アプリ概要
自分が持っている本を見える化する蔵書管理アプリです。
要約ノート作成、感想つぶやき機能もついています。

デモページ公開中です（AWS)
http://18.177.162.184/

## 企画背景
  自分自身、読書が趣味で部屋に多くの本があるのですが、積ん読状態の本も多く、どんな本を持っているのかよく分からないという課題を抱えています。
  そこで蔵書をジャンル別で一元管理、csv出力できるBookNoteを開発することに致しました。併せて読書の内容をアウトプットできるように本の要約（Summary)や本を読んだ感想(Thought)を記録できる機能を実装しました。
  
## 開発環境
フロントエンド： Slim、Sass、Bootstrap4  
バックエンド： Ruby on Rails  
インフラ：　AWS（EC2） Docker  
docker-composeで以下環境を構築しています    
         Webサーバ：Nginx　アプリサーバ： Puma　　DB： MySQL

## 機能
1. 書籍情報のCRUD機能
2. ユーザー登録、ログイン/ログアウト機能(gem： bcrypt)
3. 書籍検索機能、ジャンル別のソート機能 (gem： ransack）
4. 書籍リストcsv 出力機能
5. 要約ノート投稿機能 (CRUD)
6. 感想tweet 投稿機能(CRUD)


## 使い方  
#### (各ページの表示例は以下「メイン機能の紹介」をご覧ください）
1. デモページリンクをクリックするとTopページに遷移します。　demoページ： http://18.177.162.184/

2. デモを試すをクリック  
→ デモ用のメールアドレス「sample@example.com」、パスワード「password」を入力するとログインできます。

3-1. 「蔵書登録機能」→ 「本を登録する」をクリック→ 必要事項を入力  
　　　   （ジャンルは「ジャンル一覧」ボタンより登録可能です）

3-2. 「ジャンル登録機能」　「ジャンル一覧」→「ジャンル登録」をクリック→「ジャンル名」を入力

4-1. 「要約ノート投稿機能」 BookList内の書名をクリック（詳細ページに遷移） → 「Summary作成」をクリック

4-2. 「感想つぶやき機能」　 BookList内の書名をクリック（詳細ページに遷移）→ 「Thought作成」をクリック

4-3. 「CSV出力機能」　　　 BookList内の「csvエクスポート」をクリック

## インストール
  ```
  $ git clone https://github.com/majorboy/booknote.git
  $ cd booknote
  $ bundle install
  ```
## 作者
<a href="https://twitter.com/tuk_nagayan" target="_blank">長田 謙吾：Twitter</a>

## メイン機能の紹介
#### Topページ
![image](https://user-images.githubusercontent.com/49441355/71936354-89132e80-31ec-11ea-9231-2eeeed61a484.png)

#### 蔵書一覧ページ
![image](https://user-images.githubusercontent.com/49441355/71934486-e3f65700-31e7-11ea-874a-f609f5ef5418.png)

#### ジャンル登録機能
![image](https://user-images.githubusercontent.com/49441355/71968454-4f701100-3248-11ea-8caa-2d5a0873a73f.png)

#### 書籍検索、ジャンル別ソート機能
![image](https://user-images.githubusercontent.com/49441355/71936081-cb883b80-31eb-11ea-9459-07ee1273d402.png)

* gem: ransackを利用してタイトル・作者名による書籍検索、ジャンル別で蔵書をソートできる機能を付けました

#### 要約ノート作成例（Summary機能）
![image](https://user-images.githubusercontent.com/49441355/71934771-80b8f480-31e8-11ea-9da2-7b9f01615429.png)

#### 感想 投稿例 (Thought機能）
![image](https://user-images.githubusercontent.com/49441355/71935781-0ccc1b80-31eb-11ea-8620-2e7eb887f617.png)

* Twitterのようなイメージで気軽に読書の感想をtweetする機能をつけました
### csv出力例
![image](https://user-images.githubusercontent.com/49441355/71935092-46038c00-31e9-11ea-8a2d-fd4998026bb6.png)

* Exel等で気軽にデータの加工ができるようにしたいと考え書籍データのcsv出力機能もつけました

## ライセンス
This project is licensed free.
ご自由にご利用ください
