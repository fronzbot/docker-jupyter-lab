FROM continuumio/anaconda3:latest
MAINTAINER Mark Pude markpude@gmail.com

ENV JUPYTER_CONFIG_DIR="/opt/jupyterconfig"

RUN conda update -n base conda
RUN conda install -c conda-forge jupyterlab
RUN jupyter serverextension enable --py jupyterlab --sys-prefix
RUN jupyter notebook --generate-config
RUN pip install SchemDraw

EXPOSE 9999
CMD jupyter lab --ip=* --port 9999 --no-browser --allow-root --notebook-dir=/opt/notebooks
