# autogo-python

preinstall: python3+  pip3+

## 1. 下载荔枝电台的专辑

### filename: download-lizhi.py

安装依赖组件: 
```bash
	pip install requests bs4 
```

1. 根据专辑的id下载专辑。
2. 按专辑名称创建目录。
3. 保存专辑声音列表json文件。
4. 校验mp3文件是否存在，不存在则下载
5. 下载声音（标题、图片、mp3）
6. 


todo: 声音标题会重复，对应文件需加入voiceid区别。

## 2. 剪辑声音文件去掉广告

### splitMp3.sh

1. 该文件和荔枝专辑文件夹同目录
2. 执行splitMp3.sh 脚本，在每个专辑下创建cut目录，并剪辑mp3去掉最后5s（荔枝电台追加的宣传）。
3. 可重复执行，cut目录下有同名文件则跳过。

