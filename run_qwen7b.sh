docker run -d --runtime nvidia --gpus all \
    --name vllm_serve \
    -v ./models:/models \
    --net host \
    harbor.prod.yxit.cc/vesta/vllm-openai:latest \
    --model=/models/Qwen2.5-7B-Instruct \
    --port=8102 \
    --enable-auto-tool-choice \
    --tool-call-parser hermes