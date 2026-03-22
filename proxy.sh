proxy = "" # 学内プロキシを記載
proxy () {
  case "$1" in
    on)
      export http_proxy=$proxy
      export https_proxy=$proxy
      echo "proxy enabled"
      ;;
    off)
      unset http_proxy https_proxy
      ;;
    status)
      echo "http_proxy=$http_proxy"
      echo "https_proxy=$https_proxy"
      ;;
  esac
}
