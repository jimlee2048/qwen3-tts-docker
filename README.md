# Qwen3-TTS Docker Usage

## Build

```bash
docker build -t qwen3-tts:latest .
```

## Run

```bash
docker run --gpus all \
  -p 7860:7860 \
  -e ATTN_IMPLEMENTATION=kernels-community/flash-attn \
  qwen3-tts:latest
```

## Environment Variables

- `ATTN_IMPLEMENTATION`: Optional attention backend used by Qwen3-TTS.
  - Default: `kernels-community/flash-attn`
