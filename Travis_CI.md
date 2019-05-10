# RUBYを使って、現在のディレクトリに捜査をする方法
docker run -it -v $(pwd):/app ruby:2.3 sh
# Ruby コンテナの上で：
gem install -N travis
travis login
cd  /app
# serviceAccontを暗号化する
travis encrypt-file service-account.json -r someonesgarden/multi-k8s

この結果表示される
「openssl aes-256-cbc -K $encrypted_0c35eebf403c_key -iv $encrypted_0c35eebf403c_iv -in service-account.json.enc -out service-account.json -d」
を.travis.ymlファイルにコピペする

# ターミナルで
git add .
git commit -m "sssss"


# クラウドシェルでパスワードを生成する方法
# 画面右上のクラウドシェルをクリック
gcloud config set project trim-hash-240208
gcloud config set compute/zone us-west1-c
gcloud container clusters get-credentials multi-cluster
kubectl create secret generic pgpassword --from-literal PGPASSWORD=mypgpassword123

# Helmを使って、Ingress-Nginxを利用する
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
# >> clusterrolebinding.rbac.authorization.k8s.io/tiller-cluster-rule created
helm init --service-account tiller --upgrade
# これでHelmが使える様になったので、ingrex-nginxをpullする
helm install stable/nginx-ingress --name my-nginx --set rbac.create=true

# Gitにpushする
# まず確認
git status
