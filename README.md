https://learn.hashicorp.com/collections/terraform/aws-get-started

サンプルコードです。

メモ

コマンド

main.tf ¥n

terraform init 

terraform -var "xxx=sample"

terraform apply

terraform outputs

terraform show

terraform login	

まずmain.tf書いてterraform initします。

main.tfのaws_instance, app_serverはそれぞれタイプと名前です。これでインスタンスのIDとかに
アクセスできます。

aws_instance.app_server.id


AMIのidは以下のコマンドをAWS CLIを使いうつと返ってきます

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html#finding-quick-start-ami
