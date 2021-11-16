# autogo-python

preinstall: python3+  pip3+

## 1. 下载荔枝电台的专辑

filename: download-lizhi.py

安装依赖组件: 
```bash
	pip install requests bs4 
```

1. 根据专辑的id下载专辑。
2. 按专辑名称创建目录。
3. 保存专辑声音列表json文件。
4. 校验mp3文件是否存在，不存在则下载
5. 下载声音（标题、图片、mp3）


todo: 声音标题会重复，对应文件需加入voiceid区别。
