#!/usr/bin/env bash

# HOST_TYPE環境変数
#   実行するホストのタイプ。会社PCならwork, 個人PCならpersonalと指定
# DROPBOX_ACCESS_TOKEN環境変数
#   Dropboxのアクセストークンを設定してください

set -eux

# http://qiita.com/yudoufu/items/48cb6fb71e5b498b2532
script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

set +x
curl -X POST https://content.dropboxapi.com/2/files/download \
    --header "Authorization: Bearer $DROPBOX_ACCESS_TOKEN" \
    --header 'Dropbox-API-Arg: {"path":"/'$HOST_TYPE'/.gitconfig"}' > $HOME/.gitconfig
set -x
