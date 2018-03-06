# docker-jupyter-lab
My custom docker for Anaconda3 and JupyterLab server.

## Usage
```
docker create \
  --name=jupyter-lab \
    -v <path to notebooks>:/opt/notebooks \
    -v <path to config>:/opt/jupyterconfig \
    -p 9999:9999 \
  empeee/jupyter-lab
```

## Custom Packages
In addition to the many packages already included in Anaconda3, these are packages I use often enough to want to include in my base image.  I expect this will change over time.
  * [SchemDraw](https://cdelker.bitbucket.io/SchemDraw/SchemDraw.html) - Python-based schematic drawing tool
