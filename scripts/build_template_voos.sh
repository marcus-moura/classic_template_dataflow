#!/bin/bash

# Variáveis de ambiente
TEMPLATE_MODULE="../classic_templates/template_voos/pipe_voos_to_bigquery.py"
TEMPLATE_NAME="batch_job_df_gcs_big_query_template"
TABLE_NAME="new_table"
DATASET_NAME="raw_curso_dataflow_voos"
DATA_SOURCE="voos_sample.csv"

# Preparação do template
python $TEMPLATE_MODULE \
    --project_id $PROJECT_ID \
	--table_name $TABLE_NAME \
	--dataset_name $DATASET_NAME \
	--bucket_name $BUCKET_NAME \
	--data_source $DATA_SOURCE \
	--runner $RUNNER \
	--project $PROJECT_ID \
	--staging_location "gs://${BUCKET_NAME}/staging" \
	--template_location "gs://${BUCKET_NAME}/templates/${TEMPLATE_NAME}" \
	--region $REGION \
	--save_main_session