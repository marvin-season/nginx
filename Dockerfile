# 使用官方的 Nginx 镜像作为基础镜像
FROM nginx:latest

# 将本地的 nginx.conf 文件复制到容器中的 /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# 将本地的 html 目录复制到容器中的 /usr/share/nginx/html
COPY html /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]