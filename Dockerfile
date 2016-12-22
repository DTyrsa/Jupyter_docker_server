FROM continuumio/anaconda
MAINTAINER Antonov Dmitri <ADmitri42@gmail.com>

RUN conda install -y jupyter && jupyter notebook --generate-config
RUN conda create -y -n Python2 python=2 anaconda && conda create -y -n Python3 python=3 anaconda

COPY jupyter_notebook_config.py /root/.jupyter/

ENTRYPOINT jupyter notebook
