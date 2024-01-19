accelerate launch --config_file deepspeed_config.yaml \
run_clm_no_trainer.py \
    --block_size 512 \
    --output_dir ./data\
    --per_device_train_batch_size 2 \
    --per_device_eval_batch_size 2 \
    --with_tracking \
    --cache_dir ./github_bsz2_200.json \
    --report_to tensorboard \
    --model_name_or_path ./llama2-7b-hf \
