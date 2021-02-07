# Alphafold Pipeline
- End to end protein structure prediction pipeline, from seq to pdb. 

### Docker file
Build docker image from https://github.com/GuanyiLi-Craig/protein-predictor/blob/master/v2/Dockerfile

```bash
sudo docker build -t alphafold_pipeline .
```

### Arch

[pic]

### Start

1. Move HHBlist database to _path-to-this-git-directory_/alphafold/database
2. Move sequence data to _path-to-this-git-directory_/alphafold/data/<Target>/
3. Start Docker by 
```bash
sudo docker run -d -p 8888:8888 --gpus all --ipc=host -v <path-to-directory>/alphafold:/data alphafold_pipeline jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token= --notebook-dir='/data'
```
