FROM       python
COPY       . /app
WORKDIR    /app
RUN        pip install -r requirements.txt 
ENV        SHELL=/bin/bash
CMD        ["python", "app.py"]