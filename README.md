# frpc-docker
# 使用方法
创建环境变量文件  
  
docker run --env-file=file_path_of_env -it -d --name=your_docker_name -p localport:dockerport keithsu/frpc
  
环境变量如下：  
**FRP_VERSION** 0.33.0  
**SERVER_HOST** host  
**SERVER_PORT** 7000  
**SERVER_TOKEN** token  
**ADMIN_ADDR** 0.0.0.0  
**ADMIN_PORT** 7400  
**ADMIN_USER** admin  
**ADMIN_PWD** admin  
