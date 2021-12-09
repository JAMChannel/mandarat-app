# mandarat-app



## 概要
マンダラートをwebアプリとして作成する。
マンダラートとはイメージとして過去学生時代の大谷翔平が
利用していたものを参照
![](https://gyazo.com/913158892ddb012b6fedcfbc25d73139/raw)


大谷翔平選手が高校時代に使用していた、マンダラートを使って
今後どうなりたいかといった夢に対する思考を整理し、実行に移していることから、
自分自身も利用してみたが、紙ベースだと以下の問題点が出てくる

- 最初に書いてもう見ていない
- 紙だとなくす
- どれだけマンダラートの項目が達成したのか実感しにくい


## 要件定義

#### 目的
- マンダラートをweb化して管理しやすくする


<table><thead><tr><th>目的を実現するための詳細要件</th></tr></thead><tbody><tr><td>webアプリで目標を管理しやすくしたい</td></tr><tr><td>目標達成までの具体的なプロセスを可視化したい</td></tr><tr><td>通知機能を作成し継続率の向上</td></tr><tr><td>目標を明確化してモチベーション維持向上</td></tr></tbody></table>



 #### MandaratAppを利用するターゲットユーザー（ペルソナ）
- 個人で利用



## テーブル設計

#### usersテーブル

- users
  - name:string
  - email:string
  - encrypted_password:string
  - admin:boolean

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, add_index: true|
|email|string|null: false, unique: true|
|encrypted_password|string|null: false|
|admin|boolean|default: false|

#### Mandaratsテーブル

- Mandarats
  - user:references
  - title:string
  - name:string


|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|title|string|null: false|
|name|string|null: false|

#### Productsテーブル

- Products
  - mandarat:references
  - name:string


|Column|Type|Options|
|------|----|-------|
|mandarat|references|null: false, foreign_key: true|
|name|string|null: false|

#### Worksテーブル

- Works
  - user:references
  - title:string
  - body:string
  - url:string


|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|title|string|null: false|
|body|string|null: false|
|url|string|null: false|

#### TagWorksテーブル

- TagWorks
  - work:references
  - tag:references



|Column|Type|Options|
|------|----|-------|
|work|references|null: false, foreign_key: true|
|tag|references|null: false, foreign_key: true|


#### Tagsテーブル

- Tags
  - name:string

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


