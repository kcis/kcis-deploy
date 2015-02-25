# kcisアプリケーションをAWSへデプロイ

このリポジトリを使うと、 https://github.com/kcis/kcis をAWSへデプロイできます。

## 初期設定

### terraformのインストール

https://www.terraform.io/downloads.html をダウンロードしてパスを通してください。

### アクセスキーとシークレットキーを取得

"IAM → Users → ユーザ名" とメニューを辿って、"Manage Access Keys" ボタンをクリックしてくだしあ。

![](img/access_secret_key1.png)

"Create Access Key" をクリックしてください。

![](img/access_secret_key2.png)

生成されたアクセスキーとシークレットキーが表示されます。

![](img/access_secret_key3.png)

このアクセスキーとシークレットキーを "~/.aws/kcis-deploy.json" に保存します。

```
$ vi ~/.aws/kcis-deploy.json
{
  "aws_access_key": "AKIAJAK635UD6CGCX2CA",
  "aws_secret_key": "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"
}
```

### "kcis-deploy"の名前でssh鍵ペアを生成

"EC2 → Key Pairs" とメニューを辿って、"Create Key Pair" ボタンをクリックしてください。

![](img/create_key_pair1.png)

鍵の名前を "kcis-deploy" にして "Create" ボタンをクリックしてください。

![](img/create_key_pair2.png)

"kcis-deploy.pem" というファイルが自動的にダウンロードされます。

![](img/create_key_pair3.png)

この "kcis-deploy.pem" ファイルを "~/.aws/kcis-deploy.pem" に配置します。

```
$ mkdir -p ~/.aws
$ mv ~/ダウンロード/kcis-deploy.pem ~/.aws/kcis-deploy.pem
$ chmod 600 ~/.aws/kcis-deploy.pem
```

## デプロイ実行

```
$ make apply
```
