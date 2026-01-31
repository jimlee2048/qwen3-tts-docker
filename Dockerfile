FROM nvidia/cuda:12.8.1-cudnn-runtime-ubuntu24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PIP_NO_CACHE_DIR=1
ENV PIP_EXTRA_INDEX_URL=https://download.pytorch.org/whl/cu128

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        ffmpeg \
        git \
        libsndfile1 \
        python3.12 \
        python3.12-dev \
        python3.12-venv \
        python3-pip \
        sox \
    && rm -rf /var/lib/apt/lists/*

RUN python3.12 -m pip install --upgrade pip

WORKDIR /app
COPY requirements.txt /app/requirements.txt

RUN python3.12 -m pip install -r requirements.txt

COPY . /app

EXPOSE 7860

CMD ["python3.12", "app.py"]
