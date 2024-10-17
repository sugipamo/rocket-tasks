# 秘密鍵の生成
openssl genrsa -out tasks.key 2048

# 証明書署名要求（CSR）の生成
openssl req -new -key tasks.key -out tasks.csr

# 自己証明書の生成
openssl x509 -req -days 365 -in tasks.csr -signkey tasks.key -out tasks.crt
