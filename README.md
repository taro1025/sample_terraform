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


