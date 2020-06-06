# step1: 基础镜像使用tensorflow-gpu，当然，你也可以使用python作为基础镜像，后面再安装tensorflow-gpu的依赖
FROM hub.data.wust.edu.cn:30880/library/tensorflow:1.14.0-gpu-py3

# step2: 将工程下面的机器学习相关的文件（这里是mnist文件夹）复制到容器某个目录中，例如：/home/mnist
COPY ./ /home/bert

# step3 设置容器中的工作目录，直接切换到/home/mnist目录下
WORKDIR /home/bert

# step4 安装依赖
#RUN pip install -r requirements.txt

# step5 设置容器启动时的运行命令，这里我们直接运行python程序
ENTRYPOINT ["python", "/home/bert/run_squad.py"]