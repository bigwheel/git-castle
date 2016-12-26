#!/usr/bin/env bash

# GIT_PROFILE環境変数
#   id_rsaファイルを取得するならDropboxのアクセストークンを設定してください
#   しないのであればno_needと設定してください

set -eux

# http://qiita.com/yudoufu/items/48cb6fb71e5b498b2532
script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# ここ、DROPBOX_ACCESS_TOKENは必須なのにsshの方ではそれがボタンになるよう書いているのでコンフリクトしているため詰まった
