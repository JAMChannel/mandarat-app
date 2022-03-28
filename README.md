# mandarat-app
データを取りたいので一旦,最低限の実装を行い本番環境にリリース  
https://mandarat.com/  


新規登録はご遠慮ください！！



# 概要
マンダラートをwebアプリとして作成する。  

マンダラートとはイメージとして過去学生時代の有名選手が  
利用していたものを参照  

![](https://gyazo.com/913158892ddb012b6fedcfbc25d73139/raw)


マンダラートを使って,
今後どうなりたいかといった夢に対する思考を整理。   
実行に移していることから、
自分自身も利用してみたが、  
紙ベースだと以下の問題点が出てくる  

- 最初に書いてもう見ていない
- 紙だと無くすリスクが高い
- どれだけマンダラートの項目が達成したのか実感しにくい


## 要件定義

#### 目的
- マンダラートをweb化して管理しやすくする  


<table><thead><tr><th>目的を実現するための詳細要件</th></tr></thead><tbody><tr><td>webアプリで目標を管理しやすくしたい</td></tr><tr><td>目標達成までの具体的なプロセスを可視化したい</td></tr><tr><td>通知機能を作成し継続率の向上</td></tr><tr><td>目標を明確化してモチベーション維持向上</td></tr></tbody></table>   



 ### MandaratAppを利用するターゲットユーザー（ペルソナ）
> 個人で利用  



## テーブル設計(ER図)
![](https://gyazo.com/0f2d56368eb5331400c9d49782df2e95/raw)  
https://gyazo.com/0f2d56368eb5331400c9d49782df2e95  

# 機能実装
## トップページ(転職活動中のみ公開)   
![](https://gyazo.com/7c34d442018987446b94e13275f3aca0/raw)  
- トップページはReact.jsを活用しインパクトのあるアニメーションを作成   
https://github.com/JAMChannel/mandarat-app/issues/13
https://github.com/JAMChannel/mandarat-app/issues/11
https://github.com/JAMChannel/mandarat-app/issues/1



## トップページ（ポートフォリオページ)   
![](https://gyazo.com/a3079fe1c5ca31f7b130747ab73d1745/raw)  
- portfolioページはReact.jsを活用し過去の学習期間で作成したアプリを展開   
https://github.com/JAMChannel/mandarat-app/issues/18     


## トップページ（Timelineページ)
トップ
![](https://gyazo.com/5f38be37aa0b1e46276eec9976ffa6ef/raw)  
- トップページはReact.jsを活用しSPAにて実装

## ログイン（modal）  

![](https://gyazo.com/4c7104f04684d51f52cf9d342ea7e003/raw)  
modalを利用してログインページを実装
## ログイン（SNS認証）  

![](https://gyazo.com/8ab79fdaff490d357b042bec9ca065ea/raw)  
 Google, Facebookを利用して簡単にログインができるように実装
## slackに定期アンケート通知
![](https://gyazo.com/405fc829553f6e522e91f9d9e3bb1909/raw)  

アンケート回答を忘れないようにslackに定期通知。  
 LINEやメールも検討したが、一番見るのがslackの為  
 Slack APIとwheneverを活用し実装

https://github.com/JAMChannel/mandarat-app/issues/29


#### アンケート投稿機能
![](https://gyazo.com/6ac92f025ccae21fe17ce59013ecb962/raw)  

## マンダラート確認ページ
![](https://gyazo.com/1f3b2119119a3b85378197fdfce60953/raw)  
チャートを利用して現在の目標達成率を明確に確認できるようなページ。  
https://github.com/JAMChannel/mandarat-app/issues/34

#### 新規投稿
![](https://gyazo.com/981ab80ad2331bcd3826c9127bacde27/raw)  
一括投稿ができるようにformオブジェクトを利用して複数回投稿しなくても  
一回で完結できるように実装。  
https://github.com/JAMChannel/mandarat-app/issues/10


## その他
- Basic認証  
https://github.com/JAMChannel/mandarat-app/issues/30

- rubocop  
https://github.com/JAMChannel/mandarat-app/issues/25

- https変更  
https://github.com/JAMChannel/mandarat-app/issues/9

- activeストレージ導入
https://github.com/JAMChannel/mandarat-app/issues/19

# 今後追加機能（予定）
- 管理者ページの機能追加。
![](https://gyazo.com/afb44eed35f5e71a75321d4acf267d09/raw)  
Twitterや株価の情報をAPIを取得してより具体的なデータを元にSNSを運用  
できるように実装予定。


- Rspec  
https://github.com/JAMChannel/mandarat-app/issues/39  
転職先環境によってはtest必須だと感じた場合  
Rspecを導入して本ポートフォリオに導入予定

- エラーメッセージ（フラッシュメッセージ）  
https://github.com/JAMChannel/mandarat-app/issues/38  
テストリリース時は個人仕様のため不要かと存じますが、  
誰かに見てもらうときは必要かと感じた為追加で実装予定  


- マンダラート編集ページ  
https://github.com/JAMChannel/mandarat-app/issues/37  
テストリリース段階では不要だと思っていたが、
リリース後に感じたのは  
ミスして新規登録した場合に変更が必要だと感じた為,実装予定  
※非同期で修正できるように実装

