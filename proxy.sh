# 学内プロキシを入力
PROXY_URL=""
# 例: PROXY_URL="http://proxy.example.ac.jp:8080"

proxy() {
  case "$1" in
    on)
      export http_proxy="$PROXY_URL"
      export https_proxy="$PROXY_URL"
      export HTTP_PROXY="$PROXY_URL"
      export HTTPS_PROXY="$PROXY_URL"
      echo "proxy enabled"
      ;;
    off)
      unset http_proxy https_proxy HTTP_PROXY HTTPS_PROXY
      echo "proxy disabled"
      ;;
    status)
      echo "http_proxy=$http_proxy"
      echo "https_proxy=$https_proxy"
      echo "HTTP_PROXY=$HTTP_PROXY"
      echo "HTTPS_PROXY=$HTTPS_PROXY"
      ;;
    *)
      echo "usage: proxy {on|off|status}"
      ;;
  esac
}
