FROM condaforge/mambaforge

RUN conda install -y \
    conda-build
