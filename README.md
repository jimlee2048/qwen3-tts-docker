# Qwen3-TTS Demo

[![GitHub Repo](https://img.shields.io/badge/GitHub-jimlee2048%2Fqwen3--tts--demo-blue?logo=github)](https://github.com/jimlee2048/qwen3-tts-demo)
[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-jimlee2048%2Fqwen3--tts--demo-blue?logo=docker)](https://hub.docker.com/r/jimlee2048/qwen3-tts-demo)

Fork from [Qwen3-TTS Demo - Huggingface Space](https://huggingface.co/spaces/Qwen/Qwen3-TTS).

## Prerequisites

- NVIDIA GPU with recent driver
- NVIDIA Container Toolkit (for `--gpus all`)

## Quick Start

### Docker Run

```bash
docker run --gpus all \
  -p 7860:7860 \
  -e ATTN_IMPLEMENTATION=kernels-community/flash-attn \
  jimlee2048/qwen3-tts-demo:latest
```

Open `http://localhost:7860` in your browser.

### Docker Compose

Prepare your compose configuration by referencing [compose.yaml](https://raw.githubusercontent.com/jimlee2048/qwen3-tts-demo/refs/heads/main/compose.yaml), then run:

```bash
docker compose up -d
```

Open `http://localhost:7860` in your browser.

## Environment Variables

| Variable | Default | Description |
| --- | --- | --- |
| `ATTN_IMPLEMENTATION` | `kernels-community/flash-attn` | Optional attention backend used by Qwen3-TTS. |
