# 動作環境準備

## Ansibleのインストール

```
# 作成した仮想マシンインスタンスにsshでログイン

# 依存パッケージのインストール
$ sudo yum check-update
$ sudo yum install -y gcc libffi-devel python-devel openssl-devel
$ sudo yum groupinstall -y "Development Tools"

# Ansibleインストール
$ wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
$ rpm -ivh epel-release-latest-7.noarch.rpm
$ yum install epel-release

$ sudo yum install -y sshpass
$ sudo yum install -y ansible

# バージョン確認
$ ansible --version
ansible 2.2.1.0
  config file = /etc/ansible/ansible.cfg
  configured module search path = Default w/o overrides

```

## SSH通信のための公開鍵設定

```
# コントロールノードで以下を実行

$ ssh-keygen -t rsa
$ ssh-copy-id -o StrictHostKeyChecking=no -i $HOME/.ssh/id_rsa.pub localhost
$ ssh-copy-id -o StrictHostKeyChecking=no -i $HOME/.ssh/id_rsa.pub <ターゲットノード>

# 確認
$ ssh <ターゲットノード>
```

## パスワード無しでsudoできるようにする

```
# ターゲットノードで以下を実行

$ sudo visudo
# 最終行に追記
<ユーザ名> ALL=NOPASSWD: ALL
```
