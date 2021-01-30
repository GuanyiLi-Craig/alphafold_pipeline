sudo docker run -d -p 8888:8888 --gpus all --ipc=host -v /media/data:/alphafold alphafold_pipeline jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token= --notebook-dir='/data'
