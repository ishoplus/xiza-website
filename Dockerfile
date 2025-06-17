# 使用官方 Nginx 基礎映像檔
FROM nginx:stable-alpine

# 將你的靜態檔案複製到 Nginx 的默認服務目錄
# 假設你的靜態檔案在專案根目錄下的 'public' 資料夾
COPY public/ /usr/share/nginx/html

# (可選) 複製自訂的 Nginx 設定檔
# 如果你有特殊的 Nginx 設定需求，例如 URL 重寫、緩存等
# 如果沒有特殊需求，可以省略此行，Nginx 會有預設設定
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露 80 端口，這是 Nginx 預設的 HTTP 端口
EXPOSE 80

# 啟動 Nginx 服務
CMD ["nginx", "-g", "daemon off;"]