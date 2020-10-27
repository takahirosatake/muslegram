# Project Title 
  MuscleGram/ Video Sharing Service
## Project Overview 
  Youtube動画共有サービス
## Motivation
  動画共有サービスです。主にフィットネスに興味ある方向けにおすすめの動画をユーザー間で共有していただくサービスになっています。
## why? 
  私は、ボディメイク・フィットネスに興味があります。
  そのような中、筋トレに興味を持つ友人が増えたことがきっかけで動画で筋トレを効率よく学べるサイトを作ろうと考えました。
  Youtubeは、現代の学べるプラットフォームであると考えているので、それを生かした付加価値を乗っけられるようなポートフォリオサイトを作りたいと思いました。
  デザインや機能等はあえてシンプルにして、誰でも手取り早く使えるにしております。
## Point 
  GCP()Google Cloud Platform)を用いたyoutube動画検索機能です。
  お好きなワードを入力するとYoutube Data API にアクセスすることで、サービス内で動画視聴することができます。
  またユーザが検索視聴履歴は、ホーム画面で共有されますので、ユーザーが、どんな動画を見ているかを確認することができます。
  ### あなたのおすすめの動画が見つかったら、動画の感想を投稿してみよう！！
## Production environment 
  [Musclegram/サイトURL](https://musclegram.net/)
## Screenshots 
 ![32a3495364dff358bdf08bb933a073d5](https://user-images.githubusercontent.com/65805662/95764116-fc515000-0cea-11eb-8951-5ff4b41692f5.jpg)

 ![1e9e610936db3bdb5710739265d7a2c8](https://user-images.githubusercontent.com/65805662/95764130-feb3aa00-0cea-11eb-853d-a169541fb743.jpg)

 ![bb695b8ade237e201be4687b335a54c9](https://user-images.githubusercontent.com/65805662/95764147-02473100-0ceb-11eb-9341-707e6d1abdb8.jpg)

 ![dad63671940a179a52cb5fd7d59cbb3f](https://user-images.githubusercontent.com/65805662/95764151-0410f480-0ceb-11eb-8b9d-3f7854f656c8.jpg)

## Development environment Technology used 
<img width="973" alt="b6324ded8d57822aea9a4684193351ab" src="https://user-images.githubusercontent.com/65805662/95767262-74ba1000-0cef-11eb-9a98-2d5610578126.png">

- MySQL5.7
- nginx,puma
- Javascript・jQuery
- Ruby 2.5.1
- Rails 5.2.4
- Rspec テスト環境の実装
- Docker,Docker-compose（開発環境）
- AWS/本番環境（EC2, RDS, VPC, EIP, Route53, IAM, S3, Docker ACM）
- Mac Catalina(10.15.5)
- Amazon Linux 2
- VSCode, Vim
## List of Functions
◆ユーザー機能3種類・deviseを使用
- ゲストログイン機能
- 新規登録、ログイン、ログアウト
- マイページ、登録情報編集

◆Youtube 動画視聴
- youtube Video API使用
- 動画一覧機能

◆検索機能
- youtube Data API 使用 
- 検索フォームからワードを入力するとyoutubeの動画を検索することができます。

◆投稿機能
- 一覧表示 投稿、編集、削除機能

◆ブックマーク機能 いいね機能
- ブックマーク作成と削除
- ユーザマイページにてプレイリスト登録

◆レスポンシブデザイン対応 ※iphone5 SE　非対応
◆ページローダー機能

## Authors
  Takahiro Satake - [Github](https://github.com/takahirosatake)  - [Musclegram/サイトURL](http://musclegram.online/)
## Function/features to improve 
- 全体的デザインの見直し
- ユーザーフォロー機能とグループチャット機能
- 非同期通信(Ajax)
- Circle ci 実装