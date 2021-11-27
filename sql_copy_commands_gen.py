'''
The file generates the SQL commands to copy data into either RedShift or Snowflake from the specified
S3 bucket and based on the correct ARN
'''

S3_BUCKET_ADDR = 's3://d516airlinesdata-10/data'
AMAZON_ARN = ''

for year in range(2010, 2021):
    for month in range(1, 13):
        s3_uri = f'copy performance from \'{S3_BUCKET_ADDR}/On_Time_Reporting_Carrier_On_Time_Performance_(1987_present)_{year}_{month}.csv\' REGION \'us-west-2\' CREDENTIALS \'aws_iam_role={AMAZON_ARN}\' CSV IGNOREHEADER 1;'
        s3_uri = f'copy into performance from \'s3://d516airlinesdata-10/data/On_Time_Reporting_Carrier_On_Time_Performance_(1987_present)_{year}_{month}.csv\' file_format = (TYPE=\'csv\' SKIP_HEADER=1 FIELD_OPTIONALLY_ENCLOSED_BY=\'"\');'

        print(s3_uri)