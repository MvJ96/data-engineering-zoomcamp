docker run -it --rm \
    --network=pipeline_default \
    taxi_ingest:v001 \
    --pg_user=root \
    --pg_password=root \
    --pg_host=pgdatabase \
    --pg_port=5432 \
    --pg_db=ny_taxi \
    --target_table=yellow_taxi_data_2021_01 \
    --year=2021 \
    --month=1 \
    --ing_chunk_size=100000