# RUBYを使って、現在のディレクトリに捜査をする方法
docker run -it -v $(pwd):/app ruby:2.3 sh
gem install -N travis
travis login
cd  /app
# serviceAccontを暗号化する
travis encrypt-file service-account.json -r someonesgarden/multi-k8s

この結果表示される

「openssl aes-256-cbc -K $encrypted_0c35eebf403c_key -iv $encrypted_0c35eebf403c_iv -in service-account.json.enc -out service-account.json -d」
を.travis.ymlファイルにコピペする

