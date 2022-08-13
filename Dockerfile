FROM python 

LABEL maintainer="jontavpess" 
#LABEL version="1.0" 
LABEL description="docker image for data science environment with jupyter" 

#COPY ./requirements.txt /tmp
#RUN pip install -r /requirements/requirements.txt 

#COPY ./requirements.in /tmp
#RUN pip-compile /tmp/requirements.in

RUN pip install jupyter numpy pandas matplotlib plotly dash 

EXPOSE 8888 

WORKDIR /mnt/data

CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root",  "--NotebookApp.token=''", "--NotebookApp.password=''" ]